cask 'polymail' do
  version '2.1.2'
  sha256 'beeecce72ea2e8ad44e771d9382e45357e85e906f919b1ec7be3ee97f6a834ee'

  url "https://sparkle-updater.polymail.io/macos/builds/Polymail-v#{version}.zip"
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
