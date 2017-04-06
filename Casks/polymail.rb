cask 'polymail' do
  version '1.31'
  sha256 'b6537c22b53a0c42c6c4ef41b06090c9ee2482a5b74ad5fd9077e99551a5f2e2'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '799155d3e15e7d6883f05770743e0a350cbff5e175eb27e0ab0c068a9037daa6'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
