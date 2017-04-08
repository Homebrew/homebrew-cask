cask 'goofy' do
  version '3.1.0'
  sha256 'fe514568ded928f75a38f86fccea42c5f75f3ed2c69b4525a5eca47fe73070fd'

  # github.com/danielbuechele/goofy was verified as official when first introduced to the cask
  url "https://github.com/danielbuechele/goofy/releases/download/v#{version}/goofy-core-#{version}-mac.zip"
  appcast 'https://github.com/danielbuechele/goofy/releases.atom',
          checkpoint: '1325e34e791ecb6a741dad59b295b988375e1a02f5f66c797ea6cd6a599a9951'
  name 'Goofy'
  homepage 'http://www.goofyapp.com/'

  app 'Goofy.app'
end
