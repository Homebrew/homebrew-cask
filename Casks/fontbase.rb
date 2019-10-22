cask 'fontbase' do
  version '2.10.2'
  sha256 '3829985f2ee91d2eb420f2fe0ea088c9ef6eaaf1895b0a490198fde78a49b6bd'

  url "https://releases.fontba.se/mac/FontBase-#{version}.dmg"
  appcast 'https://releases.fontba.se/mac/latest-mac.yml'
  name 'FontBase'
  homepage 'https://fontba.se/'

  app 'FontBase.app'

  zap trash: [
               '~/Library/Preferences/com.dominiklevitsky.fontbase.helper.plist',
               '~/Library/Preferences/com.dominiklevitsky.fontbase.plist',
               '~/Library/Application Support/FontBase',
               '~/Library/Saved Application State/com.dominiklevitsky.fontbase.savedState',
             ]
end
