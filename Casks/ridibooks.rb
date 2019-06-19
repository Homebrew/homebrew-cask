cask 'ridibooks' do
  version '2.6.4'
  sha256 'e6e40614ceea3057f40ac2f45c069164a8ccdea66945d29b4ab1ea1a92cc8840'

  url "https://viewer-ota.ridibooks.com/mac/ridibooks-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://getapp.ridibooks.com/mac'
  name 'Ridibooks'
  homepage 'https://ridibooks.com/support/app/download'

  depends_on macos: '>= :sierra'

  app 'Ridibooks.app'

  zap trash: [
               '~/Library/Application Support/RIDI',
               '~/Library/Preferences/com.ridibooks.Ridibooks.plist',
             ]
end
