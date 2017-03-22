cask 'adguard' do
  version '1.4.1'
  sha256 'e3562e38d8c0ba95e65fe85b374b34101129b0941521b242dd2c1d3196cfdb67'

  url "https://static.adguard.com/mac/Adguard-#{version}.release.dmg"
  appcast 'https://static.adguard.com/mac/adguard-release-appcast.xml',
          checkpoint: 'c54e981acba5841629ec0f8715aba7e278946d7d1c6940b45f74fc634839dfb9'
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
