cask 'polymail' do
  version '1.33'
  sha256 '98e0551b1c3bba24cab945b11373f9c09193d5e538506ab740498f4ca5e5fbf5'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '735db562c3237f645ba7614521701f66288ab26865c16e4111861fad60443341'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
