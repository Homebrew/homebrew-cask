cask 'otomatic' do
  version '1.1.4.195'
  sha256 '3266ad64f1711b9af231f4d166bf9e4068dbd165c10686930e1ee79fb79bd68a'

  url "http://otomatic.codingcurious.com/update/archive/Otomatic.#{version}.zip"
  appcast 'http://otomatic.codingcurious.com/update/appcast.xml',
          checkpoint: 'fcc670f4a09731c28c833a5ee6833783c856c54287f307ed3d515af91087be95'
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
