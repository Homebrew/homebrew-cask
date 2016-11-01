cask 'imageoptim' do
  version '1.6.2'
  sha256 '4a6a0c60cb3b0804c9155879a71d38787ddd8f469f16516ab4c12b8f5e88278d'

  url "https://imageoptim.com/ImageOptim#{version}.tar.bz2"
  appcast 'https://imageoptim.com/appcast.xml',
          checkpoint: '245eb2ea799301d28b8c6a3edc624b0a834b5231cac2f12e060e5119329b3b5a'
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
