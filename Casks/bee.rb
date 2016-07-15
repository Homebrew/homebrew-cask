cask 'bee' do
  version '2.3.5'
  sha256 'b2b0289b009a9da5db5350eed89ef63f9ab0000a4112bfb0084140160eb3a771'

  # bee-app.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://bee-app.s3.amazonaws.com/public/Bee-#{version}.zip"
  appcast 'http://www.neat.io/appcasts/bee-appcast.xml',
          checkpoint: '0035153546057fb21a72ee030271f765eb2b25964ed2637c1ecc0f1db00b4738'
  name 'Bee'
  homepage 'http://neat.io/bee/'
  license :commercial

  app 'Bee.app'
end
