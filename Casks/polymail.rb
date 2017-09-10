cask 'polymail' do
  version '1.44'
  sha256 '220fccabca5e6f3eed9f6304f77f484839c2a41b197c26e0a8b95bc43fd47580'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'cc0e83cc80221e25ce65736c7ca619b0f0c0c59c3ad17b61a045dec0d564499f'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
