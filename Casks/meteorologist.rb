cask 'meteorologist' do
  version '3.1.8'
  sha256 'c86d5c7e82881319dfcdd4e105bacf27db0a4cb4490f61bd29503d33931f71f7'

  # downloads.sourceforge.net/heat-meteo was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss'
  name 'Meteorologist'
  homepage 'https://heat-meteo.sourceforge.io/'

  app 'Meteorologist.app'
end
