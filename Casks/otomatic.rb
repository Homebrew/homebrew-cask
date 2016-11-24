cask 'otomatic' do
  version '1.1.2.187'
  sha256 'd599a8bd51b1ea48aeb5b5c661075a08b9e1bc9e30f75d118d3d4504b938ae3d'

  url "http://otomatic.codingcurious.com/update/archive/Otomatic.#{version}.zip"
  appcast 'http://otomatic.codingcurious.com/update/appcast.xml',
          checkpoint: '42572325ba8f000af02f6140391cdb30d136087cd71103b87ddacf6cc53289ad'
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
