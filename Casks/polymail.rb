cask 'polymail' do
  version '1.09'
  sha256 '8cf5793014ce777abbb82328b414c3873ff4cd3d8bce3f22816bc7f2135ec368'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '70d4abb49e930e0d60a959dfa47d48066c88c19d2fe5e2ce151ee4275d128ce7'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
