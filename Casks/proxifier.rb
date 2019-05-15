cask 'proxifier' do
  version '2.23'
  sha256 '7d3ef1432536d2ad2a4b732092035acad7e1c0ee05abbd88b1acc55cffd57ef6'

  url 'https://www.proxifier.com/download/ProxifierMac.dmg'
  appcast 'https://www.proxifier.com/changelog/mac.html'
  name 'Proxifier'
  homepage 'https://www.proxifier.com/mac/'

  auto_updates true

  app 'Proxifier.app'

  zap trash: [
               '~/Library/Application Support/Proxifier',
               '~/Library/Caches/com.initex.proxifier.macosx',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/Proxifier Help*',
               '~/Library/Logs/Proxifier',
               '~/Library/Preferences/com.initex.proxifier.macosx.plist',
               '~/Library/Saved Application State/com.initex.proxifier.macosx.savedState',
             ]
end
