cask 'polymail' do
  version '1.16'
  sha256 'd258a5069d60da0b1fcc50d2d5b221a266afcaf478557c0c2f95d9779b8bf1ce'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '054058fe06bf143c32ccac853ad4acd6146179b9d88a9c7aeece0b7f8a272fea'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
