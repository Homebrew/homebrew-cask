cask 'polymail' do
  version '2.1.6'
  sha256 'e5c8a7e5fbeb201dbf42752af50313aa7e06f9bdbd2d08c2f013bdcbba6fb843'

  url "https://sparkle-updater.polymail.io/macos/builds/Polymail-v#{version}.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sparkle-updater.polymail.io/osx/Polymail-Latest.zip'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
