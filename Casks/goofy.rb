cask 'goofy' do
  version '3.5.3'
  sha256 'd0033b63723c1a55e7ac092d406871b8c9dc295a6f0cf031e0305ac538d767fe'

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
