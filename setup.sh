#!/bin/sh
CUR_DIR_ABS=$(cd $(dirname $0); pwd)
export PERL_CPANM_HOME=$CUR_DIR_ABS/setup
perl cpanm -n -l extlib Module::CoreList
perl -Iextlib/lib/perl5 cpanm -n -L extlib --installdeps .
sudo cp -prv etc/sysconfig/qos /etc/sysconfig/.
sudo cp -prv etc/rc.d/init.d/qos.init etc/rc.d/init.d/.
sudo cp -prv bin/qos.sh /usr/local/sbin/.
