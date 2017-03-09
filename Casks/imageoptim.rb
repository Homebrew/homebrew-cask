cask 'imageoptim' do
  version '1.7.0.1'
  sha256 'ebcf28a510bca4ecee44150e0c65c30f27c1db6cc25c213328c93ceb59643a8b'

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
