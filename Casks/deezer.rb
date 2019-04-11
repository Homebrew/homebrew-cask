cask 'deezer' do
  version '4.4.4'
  sha256 'd6d80ffc6b8327ace415f90d03909a4e7c6f70c8c996bc7638865c9163fe50ec'

  url "https://www.deezer.com/desktop/download/artifact/darwin/x64/#{version}"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.deezer.com/desktop/download%3Fplatform%3Ddarwin%26architecture=x64'
  name 'Deezer'
  homepage 'https://www.deezer.com/download'

  auto_updates true

  app 'Deezer.app'

  zap trash: [
               '~/Library/Application Support/Deezer',
               '~/Library/Preferences/com.deezer.Deezer.plist',
             ]
end
