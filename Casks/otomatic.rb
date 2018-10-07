cask 'otomatic' do
  version '1.1.4.195'
  sha256 '3266ad64f1711b9af231f4d166bf9e4068dbd165c10686930e1ee79fb79bd68a'

  url "https://otomatic.codingcurious.com/update/archive/Otomatic.#{version}.zip"
  appcast 'https://otomatic.codingcurious.com/update/appcast.xml'
  name 'Otomatic'
  homepage 'https://codingcurious.com/otomatic/'

  auto_updates true

  app 'Otomatic.app'

  zap trash: [
               '~/Library/Application Support/Otomatic',
               '~/Library/Application Support/Otomatic Helper',
               '~/Library/Caches/com.codingcurious.Otomatic',
               '~/Library/Logs/Otomatic Helper',
               '~/Library/Preferences/com.codingcurious.Otomatic.plist',
               '~/Library/Preferences/com.codingcurious.Otomatic-Helper.plist',
             ]
end
