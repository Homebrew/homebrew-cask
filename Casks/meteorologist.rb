cask 'meteorologist' do
  version '3.3.3'
  sha256 'ecf6bb659ffd52a4d827b68029fa1c14a6070a1f89815bf6165c06e4e0437293'

  # downloads.sourceforge.net/heat-meteo was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss'
  name 'Meteorologist'
  homepage 'https://heat-meteo.sourceforge.io/'

  app 'Meteorologist.app'
end
