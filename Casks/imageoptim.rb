cask 'imageoptim' do
  version '1.7.1'
  sha256 '7d5dfb69568559d6932cbe5a512e0d0b4af56fbc364e67302affe2bef07b8a7f'

  url "https://imageoptim.com/ImageOptim#{version}.tar.bz2"
  appcast 'https://imageoptim.com/appcast.xml',
          checkpoint: '931c407d8ceddf9d2a1c4c5de280c6ed0602118a9f35b6466d296f74a109b53f'
  name 'ImageOptim'
  homepage 'https://imageoptim.com/mac'

  auto_updates true

  app 'ImageOptim.app'

  zap delete: [
                '~/Library/Preferences/net.pornel.ImageOptim.plist',
                '~/Library/Caches/net.pornel.ImageOptim',
                '~/Library/Caches/ImageOptimResults.db',
                '~/Library/Saved Application State/net.pornel.ImageOptim.savedState',
              ]
end
