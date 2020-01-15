cask 'meteorologist' do
  version '3.3.0'
  sha256 'c13b3e5bf6525cf63d9476a71e0e6ad6403c3611a86dbd84042e7d57fa668bc6'

  # downloads.sourceforge.net/heat-meteo was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss'
  name 'Meteorologist'
  homepage 'https://heat-meteo.sourceforge.io/'

  app 'Meteorologist.app'
end
