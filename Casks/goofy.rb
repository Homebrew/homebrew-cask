cask 'goofy' do
  version '3.2.1'
  sha256 'a85b5055b0e33d60ae54694118cb46e37bb0a5ac282b7f1de8993a481bd37f78'

  # github.com/danielbuechele/goofy was verified as official when first introduced to the cask
  url "https://github.com/danielbuechele/goofy/releases/download/v#{version}/goofy-core-#{version}-mac.zip"
  appcast 'https://github.com/danielbuechele/goofy/releases.atom',
          checkpoint: '707ac5b64712a1598c826614d0608536915a75f62382f0108a56180d5dab6cbf'
  name 'Goofy'
  homepage 'http://www.goofyapp.com/'

  app 'Goofy.app'

  zap delete: [
                '~/Library/Application Support/goofy-core',
                '~/Library/Caches/cc.buechele.Goofy',
                '~/Library/Caches/cc.buechele.Goofy.ShipIt',
                '~/Library/Preferences/cc.buechele.Goofy.helper.plist',
                '~/Library/Preferences/cc.buechele.Goofy.plist',
                '~/Library/Saved Application State/cc.buechele.Goofy.savedState',
              ]
end
