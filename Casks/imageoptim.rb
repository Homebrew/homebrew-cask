cask 'imageoptim' do
  version '1.6.1'
  sha256 'cfa43f7d9dbd3f231a95feb534c8862ed6770920a6f03a713a1a5556a26a9978'

  url "https://imageoptim.com/ImageOptim#{version}.tar.bz2"
  appcast 'https://imageoptim.com/appcast.xml',
          :sha256 => '2dccc0821cf975c462a63973313f5af6066d4d6509a33a8b40b0c6fbdc690da2'
  name 'ImageOptim'
  homepage 'https://imageoptim.com/'
  license :gpl

  app 'ImageOptim.app'

  zap :delete => [
                  '~/Library/Preferences/net.pornel.ImageOptim.plist',
                  '~/Library/Caches/net.pornel.ImageOptim',
                  '~/Library/Caches/ImageOptimResults.db',
                  '~/Library/Saved Application State/net.pornel.ImageOptim.savedState'
                 ]
end
