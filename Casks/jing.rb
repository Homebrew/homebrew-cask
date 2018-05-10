cask 'jing' do
  version '2.8.0'
  sha256 '5717c1602347965dc28e53d792e252e03a5f6ee1ad59cc3ad3bb596bed910935'

  url 'https://download.techsmith.com/jing/mac/jing.dmg'
  appcast 'https://download.techsmith.com/update/jing/enu/appcast.xml',
          checkpoint: '7caf2adfd6ffe5d0330e28eb7fc939952c6862a3dc45e96b8dbda0e6898d69d8'
  name 'Jing'
  homepage 'https://www.techsmith.com/jing.html'

  app 'Jing.app'
end
