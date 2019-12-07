cask 'avocode' do
  version '4.2.0'
  sha256 '9f3e96399f65bcf28252d1ed38a07e20ee5eb71230ade0d9de69baad40f93c41'

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
