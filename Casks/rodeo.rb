cask 'rodeo' do
  version '2.5.2'
  sha256 '9e96d1966cc2a5159c4079312e30c1c20ad834fa766bc92dac938fb944c79d0d'

  # github.com/yhat/rodeo was verified as official when first introduced to the cask
  url "https://github.com/yhat/rodeo/releases/download/v#{version}/Rodeo-#{version}.dmg"
  appcast 'https://github.com/yhat/rodeo/releases.atom',
          checkpoint: '11314607f359d744a2a1f03a11aef9528e71290df56645f146d9a9a94974c893'
  name 'Rodeo'
  homepage 'http://rodeo.yhat.com/'

  app 'Rodeo.app'
end
