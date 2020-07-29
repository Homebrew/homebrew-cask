cask 'historyhound' do
  version '2.2'
  sha256 '527b8e799764393558bda0812f278677784d954826112cf98cd1a4b7ec83c4b9'

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
