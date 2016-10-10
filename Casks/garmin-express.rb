cask 'garmin-express' do
  version :latest
  sha256 :no_check

  url 'http://download.garmin.com/omt/express/B/GarminExpressInstaller.dmg'
  name 'Garmin Express'
  homepage 'https://www.garmin.com/express'

  pkg 'Install Garmin Express.pkg'

  uninstall pkgutil: 'com.garmin.renu.client'
end
