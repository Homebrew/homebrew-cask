cask 'imageoptim' do
  version '1.8.5'
  sha256 '5ed912d4e5f726ea7a552c8f294c95c61cd9f6f8842239f65866fba5ca010f03'

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
