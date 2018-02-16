cask 'goofy' do
  version '3.3.1'
  sha256 'df3e650ae8fc318b2a9f75a66077b08b2d845aa53d4fc14cdb07c9602f20ece7'

  # github.com/danielbuechele/goofy was verified as official when first introduced to the cask
  url "https://github.com/danielbuechele/goofy/releases/download/v#{version}/goofy-core-#{version}-mac.zip"
  appcast 'https://github.com/danielbuechele/goofy/releases.atom',
          checkpoint: '48776e9bc3abf02a6f4068913e67f83e6ed224f08811dc5db0e606056eb46979'
  name 'Goofy'
  homepage 'http://www.goofyapp.com/'

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
