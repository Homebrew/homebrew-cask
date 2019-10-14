cask 'blitz' do
  version '1.3.11'
  sha256 '29029591f80059159801e9fc0ddd972173ad3b3968f2a80462a14bc9ac884fbb'

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
