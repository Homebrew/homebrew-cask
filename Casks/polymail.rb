cask 'polymail' do
  version '2.2.3'
  sha256 '3e15827725f0ac69943d846bfc6fcbfaf3a8123cf2e232d0f5272e18d4ec4f99'

  url "https://sparkle-updater.polymail.io/macos/builds/Polymail-v#{version}.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sparkle-updater.polymail.io/osx/Polymail-Latest.zip'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
