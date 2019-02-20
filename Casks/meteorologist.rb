cask 'meteorologist' do
  version '3.1.6'
  sha256 '6d5cf9ee7a10b499ea0324f87db7d66f8b799309e41cb2ff1e396690c8ad034a'

  # downloads.sourceforge.net/heat-meteo was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss'
  name 'Meteorologist'
  homepage 'https://heat-meteo.sourceforge.io/'

  app 'Meteorologist.app'
end
