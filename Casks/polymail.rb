cask 'polymail' do
  version '1.30'
  sha256 'e9e1e8494e653ebc160af4af58eba1aafb6d73d4b016dceaa1b5a90caa8f0791'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'be7aa3378687ce8a34382f666cfdbd288658860736038a46f3491da3bf447e06'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
