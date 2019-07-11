cask 'slite' do
  version '1.1.0'
  sha256 '45dbfdd803fdee3e6afe5028f793c887d3d1a743f7ffeba4070643fb82dab1ca'

  # storage.googleapis.com/slite-desktop was verified as official when first introduced to the cask
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
