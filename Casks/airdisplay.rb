class Airdisplay < Cask
  url 'http://avatron.com/downloads/AirDisplayInstaller.zip'
  homepage 'http://avatron.com/apps/air-display/'
  version 'latest'
  no_checksum
  install 'Air Display Installer.pkg'
  uninstall :pkgutil => 'com.avatron.pkg.AirDisplay'
end
