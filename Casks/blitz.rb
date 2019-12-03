cask 'blitz' do
  version '1.4.10'
  sha256 'da4e14bd59221cdd02e36ceca5615c360a3470aef03a60a9209c1cba47a9f763'

  url "https://dl.blitz.gg/download/Blitz-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://dl.blitz.gg/download/mac'
  name 'Blitz'
  homepage 'https://blitz.gg/'

  auto_updates true

  app 'Blitz.app'

  uninstall quit: 'com.blitz.app'

  zap trash: [
               '~/Library/Application Support/Blitz',
               '~/Library/Caches/com.blitz.app.ShipIt',
               '~/Library/Cookies/com.blitz.app.binarycookies',
               '~/Library/Logs/Blitz',
               '~/Library/Preferences/com.blitz.app.plist',
               '~/Library/Saved Application State/com.blitz.app.savedState',
             ]
end
