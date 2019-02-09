cask 'blitz' do
  version '0.9.17'
  sha256 '6655bcf3626fe835e0ac30a0f76f34e9b77a39a18ac7a3f0c4eab7a05d3382cf'

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
