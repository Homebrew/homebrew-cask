cask 'otomatic' do
  version '1.1.177'
  sha256 'db3bd56f32bf9bc93aef204da3c3a983fdcf4b80cb7e5cc23d5a5f6027231fdc'

  url "http://otomatic.codingcurious.com/update/archive/Otomatic.#{version}.zip"
  appcast 'http://otomatic.codingcurious.com/update/appcast.xml',
          checkpoint: 'f6e4f6d3e9839458b9788bdb669f0550afafb6f1df537ac9c0bd5a739f91ad29'
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
