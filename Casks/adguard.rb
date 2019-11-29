cask 'adguard' do
  version '2.2.3.661'
  sha256 '9668a1f8cebe71867524de3f68d68b1f21b97dfc1e50433ec4d16fd73f18fca4'

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
