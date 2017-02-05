cask 'polymail' do
  version '1.24'
  sha256 '86f3d80109dfa4c7d328bf53d682ad5dcb04d08fb831ab52811189ddd7ca5cd2'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'dfee54c0065a56a6da3b612db5c4556d5ebb96f113792a1a33bd2ff4d97e7b33'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
