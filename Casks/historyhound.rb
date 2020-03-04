cask 'historyhound' do
  version '2.1.1'
  sha256 '98060c93f5cb7b70f973d5c11460cd31554af90257799a789981a09d2a90c95a'

  url "https://www.stclairsoft.com/download/HistoryHound-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?HH'
  name 'HistoryHound'
  homepage 'https://www.stclairsoft.com/HistoryHound/'

  auto_updates true

  app 'HistoryHound.app'

  zap trash: [
               '~/Library/Application Support/HistoryHound',
               '~/Library/Caches/com.stclairsoft.HistoryHound',
               '~/Library/Preferences/com.stclairsoft.HistoryHound.plist',
             ]
end
