cask 'polymail' do
  version '2.0.6'
  sha256 'ee5de0dcfca926bcc9c6ef44d2d23e41f7d0fbc1c989a43e5d1c81dc0dc56b17'

  url "https://sparkle-updater.polymail.io/macos/builds/Polymail-v#{version}.zip"
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
