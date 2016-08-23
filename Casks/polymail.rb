cask 'polymail' do
  version '1.06'
  sha256 '475662770b0f70e80ee3e72e39029dc99ca06820e90e0206f0558c011c8893c2'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'a2f71272e29a34be9ae1a18caf113886080f431d5101e406e2dc46bc0e302c34'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
