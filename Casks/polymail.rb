cask 'polymail' do
  version '2.1.9'
  sha256 '92b91d488ec409887e90ce2a4ad864e3e066ab5cbbc6be496e8c7beffb79df64'

  url "https://sparkle-updater.polymail.io/macos/builds/Polymail-v#{version}.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sparkle-updater.polymail.io/osx/Polymail-Latest.zip'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
