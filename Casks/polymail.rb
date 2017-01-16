cask 'polymail' do
  version '1.21'
  sha256 'cc4e3637bd0f5223554c13f7a552060060c1f936cbea80379220aa596f187d7b'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'f63977c7a9b614f8172580eb3b41330eae50411fa60d77693bbfe3577dc99f82'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
