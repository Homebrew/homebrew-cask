cask 'blitz' do
  version '0.9.21'
  sha256 'a255fb27f817cb910487eb1efc6fdad0fdc085c90c887933a0598786c5c21096'

  url 'https://dl.blitz.gg/download/mac'
  appcast "https://www.corecode.io/cgi-bin/check_urls/check_url_filename.cgi?url=#{url}"
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
