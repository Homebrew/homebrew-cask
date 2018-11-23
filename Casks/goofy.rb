cask 'goofy' do
  version '3.3.4'
  sha256 '175a5e629128fc5163378217fd4fe4122de768b67c93982abff645d0c33d1e19'

  # github.com/danielbuechele/goofy was verified as official when first introduced to the cask
  url "https://github.com/danielbuechele/goofy/releases/download/v#{version}/Goofy-#{version}-mac.zip"
  appcast 'https://github.com/danielbuechele/goofy/releases.atom'
  name 'Goofy'
  homepage 'https://www.goofyapp.com/'

  app 'Goofy.app'

  zap trash: [
               '~/Library/Application Support/goofy-core',
               '~/Library/Caches/cc.buechele.Goofy',
               '~/Library/Caches/cc.buechele.Goofy.ShipIt',
               '~/Library/Preferences/cc.buechele.Goofy.helper.plist',
               '~/Library/Preferences/cc.buechele.Goofy.plist',
               '~/Library/Saved Application State/cc.buechele.Goofy.savedState',
             ]
end
