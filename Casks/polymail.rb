cask 'polymail' do
  version '2.1.8'
  sha256 '4f532c6e76869362f9b1334b34ebfbdf211ed03e25a1d6f1ac2bfff077b60f75'

  url "https://sparkle-updater.polymail.io/macos/builds/Polymail-v#{version}.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sparkle-updater.polymail.io/osx/Polymail-Latest.zip'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
