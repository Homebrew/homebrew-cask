cask 'goofy' do
  version '3.4.7'
  sha256 '03d5468ad09575f11012c59a4183edd7a2b46be59c753472be6ccec2ddca8091'

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
