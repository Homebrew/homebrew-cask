cask 'meteorologist' do
  version '3.1.7'
  sha256 '78f764a8f0188c41db8cd6dd7c5b7afae1ec351e32b6f8167610062d616000d7'

  # downloads.sourceforge.net/heat-meteo was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss'
  name 'Meteorologist'
  homepage 'https://heat-meteo.sourceforge.io/'

  app 'Meteorologist.app'
end
