cask 'imageoptim' do
  version '1.8.7'
  sha256 '94654a8f3166ccb0aebd5f863f44d8be609c996936812f3d30c4b5d495e3df06'

  url "https://imageoptim.com/ImageOptim#{version}.tar.bz2"
  appcast 'https://imageoptim.com/appcast.xml'
  name 'ImageOptim'
  homepage 'https://imageoptim.com/mac'

  auto_updates true

  app 'ImageOptim.app'

  zap trash: [
               '~/Library/Caches/net.pornel.ImageOptim',
               '~/Library/Caches/ImageOptimResults.db',
               '~/Library/Preferences/net.pornel.ImageOptim.plist',
               '~/Library/Saved Application State/net.pornel.ImageOptim.savedState',
             ]
end
