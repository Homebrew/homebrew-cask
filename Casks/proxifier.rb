cask 'proxifier' do
  version '2.21'
  sha256 '139887d2f4468af222af2b8a1b806169918f359113547a918078792b47471540'

  url 'https://www.proxifier.com/distr/ProxifierMac.dmg'
  appcast 'https://www.proxifier.com/changelog/mac.html',
          checkpoint: 'af05a525c7e3128fc3c6c82f0f9ba94e2a7cb34a5f14a5592e57c3ca986ba263'
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
