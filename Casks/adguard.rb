cask 'adguard' do
  version '2.0.6'
  sha256 'c6714611a20485ed58b2ca032c617405656ea95ffee51cb4621d66aed2d3e164'

  url "https://static.adguard.com/mac/Adguard-#{version}.release.dmg"
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
