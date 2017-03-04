cask 'meteorologist' do
  version '2.0.5'
  sha256 '8fc7169b9003f48e5eba2dcdcbb0ac0f7cf73b8fea2cbf29d5a56f5672b8895c'

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss',
          checkpoint: 'ba67de4b213d4ddb1966829195c729f429c0e07774834429c4a11e87113f78f5'
  name 'Meteorologist'
  homepage 'http://heat-meteo.sourceforge.net/'

  app 'Meteorologist.app'
end
