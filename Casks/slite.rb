cask 'slite' do
  version '1.1.12'
  sha256 '6194875ad5ed4ede48120098e403c1df2899b19ceceb4ba92c998def1bedc3e5'

  # storage.googleapis.com/slite-desktop/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/slite-desktop/mac/Slite-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://slite.com/api/desktop/download%3Fplatform=mac'
  name 'Slite'
  homepage 'https://slite.com/'

  app 'Slite.app'

  zap trash: [
               '~/Library/Application Support/Slite',
               '~/Library/Caches/com.slite.desktop',
               '~/Library/Caches/com.slite.desktop.ShipIt',
               '~/Library/Preferences/com.slite.desktop.helper.plist',
               '~/Library/Preferences/com.slite.desktop.plist',
               '~/Library/Saved Application State/com.slite.desktop.savedState',
             ]
end
