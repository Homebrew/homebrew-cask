cask 'imageoptim' do
  version '1.6.4'
  sha256 '3fb2c1a169ff1971b9afe0bff9b804bcc4ecfa1e9c7f29a27b9b7f17243064c7'

  url "https://imageoptim.com/ImageOptim#{version}.tar.bz2"
  appcast 'https://imageoptim.com/appcast.xml',
          checkpoint: '7cc95564ac5968ad9251f00e53ba50471ddd04171886578158a6c4dd8ae68a44'
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
