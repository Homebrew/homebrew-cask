cask 'blitz' do
  version '0.9.16'
  sha256 'fbc5a899ca22bbadd2751997d31bf4aa345d1b6e0e9d604dcfdd1ad16621c2ec'

  url 'https://dl.blitz.gg/download/mac'
  appcast 'https://www.corecode.io/cgi-bin/check_urls/check_url_filename.cgi?url=https://dl.blitz.gg/download/mac'
  name 'Blitz'
  homepage 'https://blitz.gg/'

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
