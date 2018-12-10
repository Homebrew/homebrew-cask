cask 'imageoptim' do
  version '1.8.6'
  sha256 'c7239f4142c515c2e481cd0e8f74af7107f59ea5bd622025637f197236df981b'

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
