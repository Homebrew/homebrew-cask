cask 'polymail' do
  version '1.05'
  sha256 '2cb135991959c112f0b75bd345f77a8da0a339ffe32acb290ab59b996e56d4bb'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'd811e9dbeb17e9b8f7f194dda4793fd1b7fdbf3187f39d748a6771813b936f9f'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
