cask 'proxifier' do
  version '2.24'
  sha256 '7ab74efb9e81dff119f2c42e5b06311039865d96f1adcfa5bc5de26b739c138c'

  url 'https://www.proxifier.com/download/ProxifierMac.dmg'
  appcast 'https://www.proxifier.com/changelog/mac.html'
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
