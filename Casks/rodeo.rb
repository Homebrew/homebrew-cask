cask 'rodeo' do
  version '2.5.2'
  sha256 '9e96d1966cc2a5159c4079312e30c1c20ad834fa766bc92dac938fb944c79d0d'

  # github.com/yhat/rodeo was verified as official when first introduced to the cask
  url "https://github.com/yhat/rodeo/releases/download/v#{version}/Rodeo-#{version}.dmg"
  appcast 'https://github.com/yhat/rodeo/releases.atom',
          checkpoint: 'a6d00bc7800b4934d4850b4aac2698a56b8939e22fab4fc155a31833441da61b'
  name 'Rodeo'
  homepage 'http://rodeo.yhat.com/'

  app 'Rodeo.app'
end
