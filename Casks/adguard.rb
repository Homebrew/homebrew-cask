cask 'adguard' do
  version '1.5.8'
  sha256 '421756ece1cad65b65f994ac803651e9b443ef61eda31c21ec8dec12d2379b1d'

  url "https://static.adguard.com/mac/Adguard-#{version}.release.dmg"
  appcast 'https://static.adguard.com/mac/adguard-release-appcast.xml'
  name 'Adguard for Mac'
  homepage 'https://adguard.com/'

  app 'Adguard.app'

  zap trash: [
               '/Library/Application Support/com.adguard.Adguard',
               '~/Library/Application Support/Adguard',
               '~/Library/Application Support/com.adguard.Adguard',
               '~/Library/Caches/com.adguard.Adguard',
               '~/Library/Cookies/com.adguard.Adguard.binarycookies',
               '~/Library/Logs/Adguard',
               '~/Library/Preferences/com.adguard.Adguard.plist',
             ]
end
