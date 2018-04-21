cask 'imageoptim' do
  version '1.8.0'
  sha256 'a674f8f0cf09eda0e0f725da0e95dbdf929bec6e06dd087f38ee4d7e6858b568'

  url "https://imageoptim.com/ImageOptim#{version}.tar.bz2"
  appcast 'https://imageoptim.com/appcast.xml',
          checkpoint: '564d3b7e0c333fdb282098abf2938595a3c0e10f5e03749f56e714979f87d019'
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
