cask 'polymail' do
  version '1.02'
  sha256 '98de9e8c5c5aa31cf70e13101a46fa14550e71f75eab234116ccdd6e3e744d4c'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '4f1137789b56fab835c88e48f0ceb8afb8f37078bfb1f87eaf19fa881a474a64'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
