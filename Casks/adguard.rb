cask 'adguard' do
  version '2.4.8.795'
  sha256 '16768b764f6eb2fe89a97abf2c749077583c06c1ee4e5711500c8f33d3f3db2e'

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
