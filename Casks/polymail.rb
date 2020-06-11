cask 'polymail' do
  version '2.2.0'
  sha256 'e91f5641a7f5a49f53a8745d156551a6fcd36a55721ed2da2c74125c0cbbb3e9'

  url "https://sparkle-updater.polymail.io/macos/builds/Polymail-v#{version}.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sparkle-updater.polymail.io/osx/Polymail-Latest.zip'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
