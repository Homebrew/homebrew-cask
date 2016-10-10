cask 'jing' do
  version '2.7.0'
  sha256 '99fefbe732cb7afcc6956be58929f401a36ce9f406951e7ff0d127b7b958264a'

  url 'https://download.techsmith.com/jing/mac/jing.dmg'
  appcast 'https://download.techsmith.com/update/jing/enu/appcast.xml',
          checkpoint: '2bf893728361e8bf5a7a36af4a2c4299c0bd04274e51f6c89affdb1f6df02880'
  name 'Jing'
  homepage 'https://www.techsmith.com/jing.html'

  app 'Jing.app'
end
