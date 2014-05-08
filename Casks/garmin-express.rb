class GarminExpress < Cask
  url 'http://download.garmin.com/omt/express/GarminExpress.dmg'
  homepage 'http://www.garmin.com/express'
  version 'latest'
  no_checksum
  install 'Install Garmin Express.pkg'
  uninstall :pkgutil => 'com.garmin.renu.client'
end
