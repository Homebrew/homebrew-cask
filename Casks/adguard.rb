cask 'adguard' do
  version '2.1.2.595'
  sha256 'cc2e62aa3b5f9c94bab0caedca782610e72961fe7d268201701b5dd1fdd6951d'

  url "https://static.adguard.com/mac/release/AdGuard-#{version}.dmg"
  appcast 'https://static.adguard.com/mac/adguard-release-appcast.xml'
  name 'Adguard for Mac'
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
