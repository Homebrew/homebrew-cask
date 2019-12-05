cask 'goofy' do
  version '3.5.1'
  sha256 '7b8293f03a070f70d21faac14dcdb6229523ff1af624e57a24b530c908b1dc8f'

  # github.com/danielbuechele/goofy was verified as official when first introduced to the cask
  url "https://github.com/danielbuechele/goofy/releases/download/v#{version}/Goofy-#{version}.dmg"
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
