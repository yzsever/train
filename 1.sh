#!/bin/bash
#program :this shell scripts show 判断文件是否为块设备还是字符设备,then 
#output the result;

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
read -p "please input file name : " FILE 

if [ -c $FILE ] || [ -b $FILE ]; then

	cp $FILE /dev
	echo  "yes!"
else
	echo "not suit require!"
fi
exit 0
