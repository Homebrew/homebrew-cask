cask 'deezer' do
  version '4.19.30'
  sha256 '083d75913781ce167332293dd67d9ef36ed13ea712073c9c7dc1e205e911d871'

  url "https://www.deezer.com/desktop/download/artifact/darwin/x64/#{version}"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.deezer.com/desktop/download%3Fplatform%3Ddarwin%26architecture=x64'
  name 'Deezer'
  homepage 'https://www.deezer.com/download'

  auto_updates true

  app 'Deezer.app'

  zap trash: [
               '~/Library/Application Support/Caches/deezer-desktop-updater',
               '~/Library/Application Support/deezer-desktop',
               '~/Library/Logs/Deezer',
               '~/Library/Preferences/ByHost/com.deezer.*',
               '~/Library/Preferences/com.deezer.deezer-desktop.plist',
               '~/Library/Saved Application State/com.deezer.deezer-desktop.savedState',
             ]
end
