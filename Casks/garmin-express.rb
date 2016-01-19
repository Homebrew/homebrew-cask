cask 'garmin-express' do
  version :latest
  sha256 :no_check

  url 'http://download.garmin.com/omt/express/GarminExpress.dmg'
  name 'Garmin Express'
  homepage 'https://www.garmin.com/express'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Install Garmin Express.pkg'

  uninstall pkgutil: 'com.garmin.renu.client'
end
