cask 'imageoptim' do
  version '1.8.1'
  sha256 '1f937dd5d13b066fb5fbec9fbd125ab7cd1d1cfe42cc2fe41e5896390835f9c5'

  url "https://imageoptim.com/ImageOptim#{version}.tar.bz2"
  appcast 'https://imageoptim.com/appcast.xml'
  name 'ImageOptim'
  homepage 'https://imageoptim.com/mac'

  auto_updates true

  app 'ImageOptim.app'

  zap trash: [
               '~/Library/Caches/net.pornel.ImageOptim',
               '~/Library/Caches/ImageOptimResults.db',
               '~/Library/Preferences/net.pornel.ImageOptim.plist',
               '~/Library/Saved Application State/net.pornel.ImageOptim.savedState',
             ]
end
