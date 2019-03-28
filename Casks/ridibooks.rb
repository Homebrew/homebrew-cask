cask 'ridibooks' do
  version '2.6.1'
  sha256 '701646595ece04597839d7ea8a07d09e0afdf88ec6ddc4538ba615981e8718a0'

  url "https://viewer-ota.ridibooks.com/mac/ridibooks-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://getapp.ridibooks.com/mac'
  name 'Ridibooks'
  homepage 'https://ridibooks.com/support/app/download'

  app 'Ridibooks.app'

  zap trash: [
               '~/Library/Application Support/RIDI',
               '~/Library/Preferences/com.ridibooks.Ridibooks.plist',
             ]
end
