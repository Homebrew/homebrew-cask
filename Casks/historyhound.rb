cask 'historyhound' do
  version '2.0.2'
  sha256 'de46f2d7b65de3cde983beb6d01b39d31da15c2f9420ae29e9d557d1cb2deb45'

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
