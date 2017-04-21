cask 'imageoptim' do
  version '1.7.0.1'
  sha256 'ebcf28a510bca4ecee44150e0c65c30f27c1db6cc25c213328c93ceb59643a8b'

  url "https://imageoptim.com/ImageOptim#{version}.tar.bz2"
  appcast 'https://imageoptim.com/appcast.xml',
          checkpoint: '304f6afe472866f93bc16c090226d46108cfecc20b5907243f4f163bfb8df52f'
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
