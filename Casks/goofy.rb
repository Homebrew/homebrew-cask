cask 'goofy' do
  version '2.2.6'
  sha256 '7408f4d5870d54c13a5557c7a403da39a3c1c71850c5d6b6cca9a840152374f1'

  # github.com/danielbuechele/goofy was verified as official when first introduced to the cask
  url "https://github.com/danielbuechele/goofy/releases/download/v#{version}/Goofy.app.zip"
  appcast 'https://github.com/danielbuechele/goofy/releases.atom',
          checkpoint: '487c3d4a6f8520f7773e38341fc8fac04a556ce6ae5c3565d096a74ee5b96888'
  name 'Goofy'
  homepage 'http://www.goofyapp.com/'

  app 'Goofy.app'
end
