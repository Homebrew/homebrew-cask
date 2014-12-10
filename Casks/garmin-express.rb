cask :v1 => 'garmin-express' do
  version :latest
  sha256 :no_check

  url 'http://download.garmin.com/omt/express/GarminExpress.dmg'
  homepage 'http://www.garmin.com/express'
  license :unknown    # todo: improve this machine-generated value

  pkg 'Install Garmin Express.pkg'

  uninstall :pkgutil => 'com.garmin.renu.client'
end
