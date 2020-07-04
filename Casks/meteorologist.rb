cask 'meteorologist' do
  version '3.4.1'
  sha256 '2c7f1fec9e7423ed487536a1ac87f7c121038b9de6a0a7928c3aa2a94b347d52'

  # downloads.sourceforge.net/heat-meteo/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss'
  name 'Meteorologist'
  homepage 'https://heat-meteo.sourceforge.io/'

  app 'Meteorologist.app'
end
