cask 'adguard' do
  version '2.3.2.710'
  sha256 'ce4d082e36b92917ccd4c1e22675cab9fbe3bf32d6ea64b6e5ec5eb82dbc30dd'

  url "https://static.adguard.com/mac/release/AdGuard-#{version}.dmg"
  appcast 'https://static.adguard.com/mac/adguard-release-appcast.xml'
  name 'Adguard'
  homepage 'https://adguard.com/'

  pkg 'AdGuard.pkg'

  uninstall pkgutil: 'com.adguard.mac.adguard-pkg'

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
