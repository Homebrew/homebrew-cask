cask 'polymail' do
  version '2.1.5'
  sha256 'b6665f4e7fcd1789be9732830e4bde135f70b42cb7bf3b20c461dc747d3d4994'

  url "https://sparkle-updater.polymail.io/macos/builds/Polymail-v#{version}.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sparkle-updater.polymail.io/osx/Polymail-Latest.zip'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
