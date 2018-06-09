cask 'polymail' do
  version '2.0.5'
  sha256 '58c76163a93b762e81b2d84d34ba27bef3d5ee1d1104d7b9cc382bf67e17f59d'

  url "https://sparkle-updater.polymail.io/macos/builds/Polymail-v#{version}.zip"
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
