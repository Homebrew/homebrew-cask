cask 'polymail' do
  version '1.13'
  sha256 '3a2642346813d2cccb7d540d7f5b7c52bd2198a082a69092fd5ea54cd68e3ea5'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '07b3e01d07885583ae8a2446cf7d8e02b165a046b55484d5c3a3a36bb55c454e'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
