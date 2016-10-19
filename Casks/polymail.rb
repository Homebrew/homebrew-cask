cask 'polymail' do
  version '1.11'
  sha256 '3878022fb092d1916cb92c23cf630eed0117cbdcd205dd9512312cd66d1b0db5'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '70aa28877800cd5be16699be8e926e61fc5ca2aa26559f6ea50de0a78c37eaf7'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
