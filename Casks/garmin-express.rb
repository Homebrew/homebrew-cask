cask :v1 => 'garmin-express' do
  version :latest
  sha256 :no_check

  url 'http://download.garmin.com/omt/express/GarminExpress.dmg'
  name 'Garmin Express'
  homepage 'http://www.garmin.com/express'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Install Garmin Express.pkg'

  uninstall :pkgutil => 'com.garmin.renu.client'
end
