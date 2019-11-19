cask 'ridibooks' do
  version '2.7.5'
  sha256 '1aec169de07735513fa37c2329e660db0a9a47f53c40e25d9a8c145d255f5da4'

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
