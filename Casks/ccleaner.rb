cask 'ccleaner' do
  version '1.17.603'
  sha256 '6d23feade57576502460ccd7e032713b9692ef6fd60ce4908562079dd4b1db4d'

  url "https://download.ccleaner.com/mac/CCMacSetup#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.ccleaner.com/ccleaner/download?mac'
  name 'Piriform CCleaner'
  homepage 'https://www.ccleaner.com/ccleaner-mac'

  app 'CCleaner.app'

  zap trash: [
               '~/Library/Application Support/CCleaner',
               '~/Library/Caches/com.piriform.ccleaner',
               '~/Library/Preferences/com.piriform.ccleaner.plist',
               '~/Library/Saved Application State/com.piriform.ccleaner.savedState',
               '~/Library/Cookies/com.piriform.ccleaner.binarycookies',
               '/Users/Shared/CCleaner',
             ]
end
