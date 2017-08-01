cask 'polymail' do
  version '1.41'
  sha256 'bdb9fedcace106614d3629e963c04b9b71fa8257aaa2841634a63cd33dad29a7'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'eba7971966e63ea360f7157a6e507a1ea6dc9c4386e2842d9f7067bc9ca1ba24'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
