cask 'jing' do
  version '2.7.0'
  sha256 '99fefbe732cb7afcc6956be58929f401a36ce9f406951e7ff0d127b7b958264a'

  url 'https://download.techsmith.com/jing/mac/jing.dmg'
  appcast 'https://download.techsmith.com/update/jing/enu/appcast.xml',
          checkpoint: '25aea2af9dcfde0834ef353d2c970b98344c42cf189d019b9d86e2001179f79f'
  name 'Jing'
  homepage 'https://www.techsmith.com/jing.html'

  app 'Jing.app'
end
