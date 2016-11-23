cask 'otomatic' do
  version '1.1.1.184'
  sha256 '26b2a5c603299e42a844ecd1b38fe3cbbc74c003814a681a6d276694bcfd35e2'

  url "http://otomatic.codingcurious.com/update/archive/Otomatic.#{version}.zip"
  appcast 'http://otomatic.codingcurious.com/update/appcast.xml',
          checkpoint: '7d22d0d5783d6dd8552ff0accb8341d18e34a74895178b0b4d44181efa7bd24e'
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
