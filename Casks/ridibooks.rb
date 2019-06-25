cask 'ridibooks' do
  version '2.7.0'
  sha256 '894334f691685394616c35fb4392cb61a0c052a25015c22fe0fd7bcf66ee1c82'

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
