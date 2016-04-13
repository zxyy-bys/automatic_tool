#!/bin/bash
 
for i in {0..10..1}
do
    rand=$RANDOM
    size=$(((rand/500 + 1000) * 1024)) 
    < /dev/urandom tr -dc "[:alnum:]" | head -c$size  > file_$size
    sleep 5
done
