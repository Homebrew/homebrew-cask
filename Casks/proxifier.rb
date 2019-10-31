cask 'proxifier' do
  version '2.25.1'
  sha256 '55f2521c96c52eae2ec379d18cd35dd28933f1c26849cc42960b75c59b42ec4f'

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
