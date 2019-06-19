cask 'ccleaner' do
  version '1.16.570'
  sha256 'dd866e7d276bdf99d255be3ca01ec1a41a8cbbea06fadf3e13b85f9ca1ddc99e'

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
