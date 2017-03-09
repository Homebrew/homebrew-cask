cask 'imageoptim' do
  version '1.7.0'
  sha256 'c742dd415c6f1c9d2cb33a395e9911ab0e495656c774e433b10ae1f9190116ed'

  url "https://imageoptim.com/ImageOptim#{version}.tar.bz2"
  appcast 'https://imageoptim.com/appcast.xml',
          checkpoint: '1b074695f05a7637f8d494835401f0e74f03498292f1df15282ace1825cc9f40'
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
