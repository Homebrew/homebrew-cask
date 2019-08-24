cask 'proxifier' do
  version '2.24.2'
  sha256 '88f8d56f0453908481f449c4161b3b8dcb2d193ec9a7beb46ec4f5f5b57d27f6'

  url 'https://www.proxifier.com/download/ProxifierMac.dmg'
  appcast 'https://www.proxifier.com/changelog/mac.html',
          configuration: version.major_minor
  name 'Proxifier'
  homepage 'https://www.proxifier.com/mac/'

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
