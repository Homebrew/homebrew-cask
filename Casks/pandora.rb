cask 'pandora' do
  version '15.0.1'
  sha256 '2342782b5b0effa9cf1a1f8e81f7e1a80d30dcfea6826bb3c50d3eaa22126be6'

  # p-desktop-app.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://p-desktop-app.s3.amazonaws.com/releases/Pandora-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://pdora.co/desktop_mac_download'
  name 'Pandora'
  homepage 'https://www.pandora.com/desktop'

  app 'Pandora.app'

  zap trash: '~/Library/Preferences/com.pandora.desktop.plist'
end
