cask 'netgeargenie' do
  version '2.4.26(2017-9-27)'
  sha256 '41e360d92a61502aa9ea575356153d637d2a96ded0b190004d0493f1601245db'

  url 'http://http.updates1.netgear.com/netgeargenie/mac/update/NETGEARGenieInstaller.dmg'
  name 'NETGEAR Genie'
  homepage 'https://www.netgear.com/support/download/'

  pkg "NETGEAR_Genie_Installer_#{version}.pkg"
end
