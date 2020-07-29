cask 'meteorologist' do
  version '3.3.4'
  sha256 '1fb96ca1f863a69100475ba1b3bc0fe9db633b6cc19576c1109a4bccc7a8904d'

  # downloads.sourceforge.net/heat-meteo/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss'
  name 'Meteorologist'
  homepage 'https://heat-meteo.sourceforge.io/'

  app 'Meteorologist.app'
end
