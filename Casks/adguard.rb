cask 'adguard' do
  version '2.4.8.797'
  sha256 'cc6af6b1dcf5895612e60be1541aac0e233bf1775214e91b0458d9bf581ed50c'

  url "https://static.adguard.com/mac/release/AdGuard-#{version}.dmg"
  appcast 'https://static.adguard.com/mac/adguard-release-appcast.xml'
  name 'Adguard'
  homepage 'https://adguard.com/'

  auto_updates true

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
