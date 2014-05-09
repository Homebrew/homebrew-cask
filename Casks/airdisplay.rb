class Airdisplay < Cask
  url 'http://downloads.avatron.com/AirDisplayInstaller.zip'
  homepage 'http://avatron.com/apps/air-display/'
  version 'latest'
  sha256 :no_check
  install 'Air Display Installer.pkg'
  uninstall :pkgutil => 'com.avatron.pkg.AirDisplay'
end
