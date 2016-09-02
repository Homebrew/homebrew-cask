cask 'polymail' do
  version '1.07'
  sha256 'b7daa4d4f4b8e3712bfe842daf06817120f109886bdb06907a26d94c1fe5e8d3'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'ea4826716eda13fcf94855dc0d1f743e8800292b7a1081bbf2d9677fccfd0c3d'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
