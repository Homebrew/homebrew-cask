cask 'ccleaner' do
  version '1.15.507'
  sha256 '3795e8cff1404237838936fe1d17a29b645126bb32bff8873f8ece81a6c7b227'

  url "https://download.ccleaner.com/mac/CCMacSetup#{version.major_minor.no_dots}.dmg"
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
