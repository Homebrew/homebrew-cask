cask 'blitz' do
  version '0.9.19'
  sha256 '5eb59aae3429b16f7921848ea51eda5461f553a98892d8b9401c44900e38a9ae'

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
