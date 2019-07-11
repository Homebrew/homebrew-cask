cask 'meteorologist' do
  version '3.1.9'
  sha256 '5ce8c61bbd8471ff98f8a5e6567f69ff434e6c33604e834d6dfc972f1f2779db'

  # downloads.sourceforge.net/heat-meteo was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss'
  name 'Meteorologist'
  homepage 'https://heat-meteo.sourceforge.io/'

  app 'Meteorologist.app'
end
