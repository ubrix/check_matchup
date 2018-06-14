#!/usr/bin/env perl 
# Usage:
# my-script <filename>
# Specify a textfile with one item per row to randomise from.
# Example:
# ./check_matchup.pl hs_classes.txt

use strict;
use warnings;
use utf8;

my ($file1) = @ARGV;
my @classes;
my $line_counter = 0;

open (FILE1, "<$file1") or die "can't open file $file1\n";
while (my $line=<FILE1>){
    chomp ($line);
    $line_counter++;
	$classes[scalar @classes] = $line;
}
close (FILE1);

my $length = scalar @classes;

my $rand1 = int rand($length);
my $rand2 = int rand($length);

print $classes[$rand1] . " - ". $classes[$rand2] . "| rand1=$rand1 rand2=$rand2\n";

exit 0;
