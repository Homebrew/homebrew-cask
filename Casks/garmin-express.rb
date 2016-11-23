cask 'garmin-express' do
  version :latest
  sha256 :no_check

  url 'http://download.garmin.com/omt/express/B/GarminExpressInstaller.dmg'
  name 'Garmin Express'
  homepage 'https://software.garmin.com/en-US/express.html'

  pkg 'Install Garmin Express.pkg'

  uninstall pkgutil: 'com.garmin.renu.client'
end
