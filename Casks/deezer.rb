cask 'deezer' do
  version '4.18.40'
  sha256 '1caf7017a59003857a20ea9bdfa9cc12a52948d5e693daf2166d8ec369f2e77b'

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
