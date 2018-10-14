cask 'polymail' do
  version '2.1.1'
  sha256 'f0da2326c5c15642f336715f7e04713af5f97b8fd9c91b80c828769b5c5d5058'

  url "https://sparkle-updater.polymail.io/macos/builds/Polymail-v#{version}.zip"
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
