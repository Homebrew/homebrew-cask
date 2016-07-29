cask 'meteorologist' do
  version '2.0.5'
  sha256 '8fc7169b9003f48e5eba2dcdcbb0ac0f7cf73b8fea2cbf29d5a56f5672b8895c'

  url "http://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  name 'Meteorologist'
  homepage 'http://heat-meteo.sourceforge.net/'
  license :oss

  app 'Meteorologist.app'
end
