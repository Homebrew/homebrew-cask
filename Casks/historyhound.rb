cask 'historyhound' do
  version '2.2'
  sha256 '47d26ee039aefa4652ac2d0131bee47ccc6a7163cc2fe5fdb32d7c6d23aeb8cb'

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
