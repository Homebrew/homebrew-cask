cask 'otomatic' do
  version '1.1.181'
  sha256 'a99b4bc9a52a7afb2527a75efcb3d2ded2f1d061e9f310eb3eab53e5ac216cca'

  url "http://otomatic.codingcurious.com/update/archive/Otomatic.#{version}.zip"
  appcast 'http://otomatic.codingcurious.com/update/appcast.xml',
          checkpoint: 'a0a3055f5c1ff7f98b0336d0b36afd980693ff65cd1efade65b86e6b45b4bfa1'
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
