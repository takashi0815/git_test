#!/usr/bin/perl

use strict;
use warnings;

package Test;

sub new {
    my $class = shift;

    my $self = {};
    
    bless $self, $class;

    return $self;
}


package Main;

my $test = Test->new();
my $time = time;

my $yyyymmdd = &get_time($test,$time);
print "$yyyymmdd\n";
print "Hello!World\n";

sub get_time()
{
    my $self = shift;
    my $time = shift;
    my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime($time);
    $year += 1900;
    $mon += 1;
    
    return "$year年$mon月$mday日 $hour時$min分$sec秒\n";
    
}
