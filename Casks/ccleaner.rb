cask 'ccleaner' do
  version '1.16.573'
  sha256 '90b1ba7e85261bfc9f78f8d60bbf6307af5e365047f2c2e8d3e9c8005ef98044'

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
