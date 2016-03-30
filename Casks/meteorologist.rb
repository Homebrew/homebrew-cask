cask 'meteorologist' do
  version '2.0.4'
  sha256 '1ee14b352c7302ac8e1d71f22c106c02e05572f54050aee6ef804433f0886f21'

  url "http://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  name 'Meteorologist'
  homepage 'http://heat-meteo.sourceforge.net/'
  license :oss

  app 'Meteorologist.app'
end
