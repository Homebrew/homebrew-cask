cask 'historyhound' do
  version '2.1'
  sha256 '2c5f75af5efe9d2c43bfc066952be071c18251d3b443adb8cad49074c43f80d4'

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
