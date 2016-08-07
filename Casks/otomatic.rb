cask 'otomatic' do
  version '1.0.9.163'
  sha256 'ed9b0498c46ed3964eb3424df6f6ef5400f94871a62129025e725388caf0d61d'

  url "http://otomatic.codingcurious.com/update/archive/Otomatic.#{version}.zip"
  appcast 'http://otomatic.codingcurious.com/update/appcast.xml',
          checkpoint: '18d2498229f75f9787c1e5775b256b6cb87a94c8e1fdb2f79a195597f7e2ee55'
  name 'Otomatic'
  homepage 'http://codingcurious.com/otomatic/'
  license :commercial

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
