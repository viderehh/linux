apt install unattended-upgrades -y && systemctl start unattended-upgrades && systemctl enable unattended-upgrades && 
dpkg-reconfigure -plow unattended-upgrades && 
echo "APT::Periodic::AutocleanInterval "7";" >> /etc/apt/apt.conf.d/20auto-upgrades &&
apt dist-upgrade -y && exit
