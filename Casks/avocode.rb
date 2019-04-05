cask 'avocode' do
  version '3.7.0'
  sha256 'ae9aa40a948fe5c83586113acaceb01856540428f2fbfc67f7a2b904fb0b8abb'

  url "https://media.avocode.com/download/avocode-app/#{version}/Avocode-#{version}-mac.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://manager.avocode.com/download/avocode-app/mac-dmg/'
  name 'Avocode'
  homepage 'https://avocode.com/'

  auto_updates true

  app 'Avocode.app'

  zap trash: [
               '~/.avocode',
               '~/Library/Application Support/Avocode',
               '~/Library/Caches/com.madebysource.avocode',
               '~/Library/Caches/com.madebysource.avocode.ShipIt',
               '~/Library/Preferences/com.madebysource.avocode.helper.plist',
               '~/Library/Preferences/com.madebysource.avocode.plist',
               '~/Library/Saved Application State/com.madebysource.avocode.savedState',
             ]
end
