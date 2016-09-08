cask 'polymail' do
  version '1.08'
  sha256 '03efe18f6f6412ac6eb1401fe125d8b938be0901683825bf98521b9c83e1445b'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'f0279305cce8c59d8e619cfe334b9935fe3f05517f05e36d030296263f364625'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
