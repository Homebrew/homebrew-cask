cask 'polymail' do
  version '2.0.9'
  sha256 '02786392e885901b254bb14a63683a70ff56ac885b5ade9dbf7d2e3b0e822726'

  url "https://sparkle-updater.polymail.io/macos/builds/Polymail-v#{version}.zip"
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
