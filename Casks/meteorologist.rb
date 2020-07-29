cask 'meteorologist' do
  version '3.4.0'
  sha256 'f2897ae0a77cb3fcf2cfadbb95882a96e84e4d97ecbaf93e30b88e910321fdc7'

  # downloads.sourceforge.net/heat-meteo/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss'
  name 'Meteorologist'
  homepage 'https://heat-meteo.sourceforge.io/'

  app 'Meteorologist.app'
end
