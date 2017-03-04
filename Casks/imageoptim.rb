cask 'imageoptim' do
  version '1.6.5'
  sha256 'c6be114f0c2d69d4b96687eb677435209ba7f9b69caa8220be7dea09704b483d'

  url "https://imageoptim.com/ImageOptim#{version}.tar.bz2"
  appcast 'https://imageoptim.com/appcast.xml',
          checkpoint: '5f77b599caf895b543b53df8f66fd1b116a88231af25f6047bd8cd6321a2424f'
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
