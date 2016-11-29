cask 'rodeo' do
  version '2.4.10'
  sha256 'd3fed43c0ed851fc3d7db3b5241f499bd27d63948fd8049fd1c305e017e106a1'

  # github.com/yhat/rodeo was verified as official when first introduced to the cask
  url "https://github.com/yhat/rodeo/releases/download/v#{version}/Rodeo-#{version}.dmg"
  appcast 'https://github.com/yhat/rodeo/releases.atom',
          checkpoint: 'eba53abb38f96bd9e794891747a1b3dff390bd333bed2aef575eeb1ca44d6d25'
  name 'Rodeo'
  homepage 'http://rodeo.yhat.com/'

  app 'Rodeo.app'
end
