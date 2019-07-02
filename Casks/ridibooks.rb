cask 'ridibooks' do
  version '2.7.1'
  sha256 '6b69f8d9bef07ab2aa8fc78caa34dbbed0c0a32820173196582fcff870bc2f8b'

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
