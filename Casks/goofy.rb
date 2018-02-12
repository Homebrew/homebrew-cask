cask 'goofy' do
  version '3.3.0'
  sha256 '257a9430385cf15543d8c4795ddf61047b33373728fc9d645f4c9f64fb2b9026'

  # github.com/danielbuechele/goofy was verified as official when first introduced to the cask
  url "https://github.com/danielbuechele/goofy/releases/download/v#{version}/goofy-core-#{version}-mac.zip"
  appcast 'https://github.com/danielbuechele/goofy/releases.atom',
          checkpoint: 'a0be15345528f8aa40288a5d5b4499b533dde8059b04bca0ef0759a5ead9cd6c'
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
