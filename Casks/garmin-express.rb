class GarminExpress < Cask
  version :latest
  sha256 :no_check

  url 'http://download.garmin.com/omt/express/GarminExpress.dmg'
  homepage 'http://www.garmin.com/express'

  pkg 'Install Garmin Express.pkg'
  uninstall :pkgutil => 'com.garmin.renu.client'
end
