cask 'imageoptim' do
  version '1.6.1'
  sha256 'cfa43f7d9dbd3f231a95feb534c8862ed6770920a6f03a713a1a5556a26a9978'

  url "https://imageoptim.com/ImageOptim#{version}.tar.bz2"
  appcast 'https://imageoptim.com/appcast.xml',
          checkpoint: '1b321e043e90a78528070831a1f29d06f118cb82770193e1e86aff74508144ad'
  name 'ImageOptim'
  homepage 'https://imageoptim.com/'
  license :gpl

  auto_updates true

  app 'ImageOptim.app'

  zap delete: [
                '~/Library/Preferences/net.pornel.ImageOptim.plist',
                '~/Library/Caches/net.pornel.ImageOptim',
                '~/Library/Caches/ImageOptimResults.db',
                '~/Library/Saved Application State/net.pornel.ImageOptim.savedState',
              ]
end
