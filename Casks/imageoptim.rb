cask 'imageoptim' do
  version '1.7.2'
  sha256 '78a8b53cdb1be8edfb526a87ca9ad8f613889dab258928a68ff8770fe9ddb2e6'

  url "https://imageoptim.com/ImageOptim#{version}.tar.bz2"
  appcast 'https://imageoptim.com/appcast.xml',
          checkpoint: '0b74ecce5d10b49bdb7b3ff0962db28c1e212e35230e3d82183530d576ceafb9'
  name 'ImageOptim'
  homepage 'https://imageoptim.com/mac'

  auto_updates true

  app 'ImageOptim.app'

  zap delete: [
                '~/Library/Caches/net.pornel.ImageOptim',
                '~/Library/Caches/ImageOptimResults.db',
                '~/Library/Saved Application State/net.pornel.ImageOptim.savedState',
              ],
      trash:  '~/Library/Preferences/net.pornel.ImageOptim.plist'
end
