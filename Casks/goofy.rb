cask 'goofy' do
  version '3.4.2'
  sha256 'f08edf87ac0be771f40dc7c44080b246be515edcd5d66bd38ef96e74971699e8'

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
