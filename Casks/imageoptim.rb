cask 'imageoptim' do
  version '1.7.3'
  sha256 '38e91550366c66d89a59efe8a2245164c84e74f54d6495c0726862c1ca9863a1'

  url "https://imageoptim.com/ImageOptim#{version}.tar.bz2"
  appcast 'https://imageoptim.com/appcast.xml',
          checkpoint: '5b4cb5073146408ba1d6af650e91932bf6bc7a77a802b13fce8510d8cd11e015'
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
