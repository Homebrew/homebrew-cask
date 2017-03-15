cask 'otomatic' do
  version '1.1.3.191'
  sha256 'a1f983b052cfe51a8ed1f7fd1d2d14fe6d39eb59a4eec5815fc7526654f2ccd0'

  url "http://otomatic.codingcurious.com/update/archive/Otomatic.#{version}.zip"
  appcast 'http://otomatic.codingcurious.com/update/appcast.xml',
          checkpoint: '510dab1c8a12f743673a3b894ba72e0495488f1966533a192bc9cae916639deb'
  name 'Otomatic'
  homepage 'http://codingcurious.com/otomatic/'

  auto_updates true

  app 'Otomatic.app'

  zap delete: [
                '~/Library/Application\ Support/Otomatic',
                '~/Library/Application\ Support/Otomatic\ Helper',
                '~/Library/Caches/com.codingcurious.Otomatic',
                '~/Library/Logs/Otomatic\ Helper',
                '~/Library/Preferences/com.codingcurious.Otomatic.plist',
                '~/Library/Preferences/com.codingcurious.Otomatic-Helper.plist',
              ]
end
