cask 'adguard' do
  version '1.5.0'
  sha256 '449287e6280aebcea878bcdaa25ffe80dffc66d481d6235758853960d190bfb5'

  url "https://static.adguard.com/mac/Adguard-#{version}.release.dmg"
  appcast 'https://static.adguard.com/mac/adguard-release-appcast.xml',
          checkpoint: 'dd1a83e592120090baf262f8451b5d2aeb7bf24e0054ddefda1f49bfba3fb6b7'
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
