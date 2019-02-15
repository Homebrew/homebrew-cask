cask 'blitz' do
  version '0.9.20'
  sha256 '0f36b95bec82ea44ec1956731f8bcc9c0a66eafa92b13f97989069548b95786e'

  url 'https://dl.blitz.gg/download/mac'
  appcast 'https://www.corecode.io/cgi-bin/check_urls/check_url_filename.cgi?url=https://dl.blitz.gg/download/mac'
  name 'Blitz'
  homepage 'https://blitz.gg/'

  auto_updates true

  app 'Blitz.app'

  uninstall quit: 'com.blitz.app'

  zap trash: [
               '~/Library/Application Support/Blitz',
               '~/Library/Caches/com.blitz.app.ShipIt',
               '~/Library/Cookies/com.blitz.app.binarycookies',
               '~/Library/Preferences/com.blitz.app.plist',
               '~/Library/Saved Application State/com.blitz.app.savedState',
             ]
end
