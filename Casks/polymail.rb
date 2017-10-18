cask 'polymail' do
  version '1.45'
  sha256 'd9fa84eab933d8fb1ec67926eeb22a983a5d615a968da9a21f898d0a55d2552d'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '3851c258b5693be2e5501f7db58781e16434b4157896a42c4493f5504029ac00'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
