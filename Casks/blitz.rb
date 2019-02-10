cask 'blitz' do
  version '0.9.18'
  sha256 '0737e45213b73686805b2109d5aaf8ff78e68a31e9d21449bccb0acfc72a8825'

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
