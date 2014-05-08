class GarminExpress < Cask
  url 'http://download.garmin.com/omt/express/GarminExpress.dmg'
  homepage 'http://www.garmin.com/express'
  version 'latest'
  sha256 :no_check
  install 'Install Garmin Express.pkg'
  uninstall :pkgutil => 'com.garmin.renu.client'
end
