cask 'proxifier' do
  version '2.26.1'
  sha256 '0793b3141791e0cf38fd2498fb97b0ece7ae59ec03bf0c9a7760c1f798d5de35'

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
