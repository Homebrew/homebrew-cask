cask 'bee' do
  version '2.4.5'
  sha256 '5a0a722d07b1a7eba4a4d46184508eb26d9d01706bfb036808d4e73c5f3d0fbc'

  # bee-app.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://bee-app.s3.amazonaws.com/public/Bee-#{version}.zip"
  appcast 'https://s3.amazonaws.com/www.neat.io/appcasts/bee-appcast.xml',
          checkpoint: '1f90fc8801e17c005663cd0c92f9eedec9c54cdec023e9b328778660afcc248e'
  name 'Bee'
  homepage 'http://www.neat.io/bee/'

  app 'Bee.app'
end
