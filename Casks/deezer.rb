cask 'deezer' do
  version '4.18.60'
  sha256 '9f14ac454e5c557044ca3665acf70a81daa0bb533fe48be14cb8a20f1136f6bd'

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
