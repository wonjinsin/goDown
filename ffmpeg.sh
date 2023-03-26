#!/bin/bash

cd $1; 
find *.$3 | sort -n | sed 's:\\ :\\\\\\ :g'| sed 's/^/file /' > fl.txt; 
ffmpeg -f concat -i fl.txt -c copy $2.mp4; 
rm fl.txt *.$3
