cask 'polymail' do
  version '2.2.1'
  sha256 '9acc1247cd2ff64d88ca9693c4f3a25e7e2e367a11fd11f85588e7e14353f43c'

  url "https://sparkle-updater.polymail.io/macos/builds/Polymail-v#{version}.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sparkle-updater.polymail.io/osx/Polymail-Latest.zip'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
