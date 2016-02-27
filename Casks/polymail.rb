cask 'polymail' do
  version '0.75'
  sha256 'b5cd6b4acbfa3f965aaedc65803f75714bb7df2fb3f33b50c1e07419f9cd8c1d'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '028027d77bd80dab6e49e204ea99d251e5b29da7fb97b999c5ddf90e559efe60'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
