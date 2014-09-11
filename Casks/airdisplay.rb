class Airdisplay < Cask
  version 'latest'
  sha256 :no_check

  url 'http://downloads.avatron.com/AirDisplayInstaller.zip'
  homepage 'http://avatron.com/apps/air-display/'

  pkg 'Air Display Installer.pkg'
  uninstall :pkgutil => 'com.avatron.pkg.AirDisplay'
end
