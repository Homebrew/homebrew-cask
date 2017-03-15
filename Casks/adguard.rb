cask 'adguard' do
  version '1.4.0'
  sha256 '328b0ade012ff2a483bf3c5033d07f8b7cf5e1bd021258655fe4d6e4aa0517d0'

  url "https://static.adguard.com/mac/Adguard-#{version}.release.dmg"
  appcast 'https://static.adguard.com/mac/adguard-release-appcast.xml',
          checkpoint: '99ff40a86559ad69a324d5cc421554874ee1851447b69088d3ac22de57151861'
  name 'Adguard for Mac'
  homepage 'https://adguard.com/'

  app 'Adguard.app'

  zap delete: [
                '/Library/Application Support/com.adguard.Adguard',
                '~/Library/Application Support/Adguard',
                '~/Library/Application Support/com.adguard.Adguard',
                '~/Library/Caches/com.adguard.Adguard',
                '~/Library/Cookies/com.adguard.Adguard.binarycookies',
                '~/Library/Logs/Adguard',
                '~/Library/Preferences/com.adguard.Adguard.plist',
              ]
end
