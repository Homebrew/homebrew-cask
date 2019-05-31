cask 'adguard' do
  version '2.0.4'
  sha256 '14a8146d15e1c0e778904a370bad639d51cb714879f26c9813552c6b5015cf9c'

  url "https://static.adguard.com/mac/Adguard-#{version}.release.dmg"
  appcast 'https://static.adguard.com/mac/adguard-release-appcast.xml'
  name 'Adguard for Mac'
  homepage 'https://adguard.com/'

  pkg 'AdGuard.pkg'

  uninstall pkgutil: [
                       'com.adguard.mac.adguard-pkg',
                     ]

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
