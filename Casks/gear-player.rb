cask 'gear-player' do
  version '2.2.31'
  sha256 '32a6aba48f4e1b5b5ef4e11e082637578b892affb77aa0b729a62308fc015ade'

  url 'https://dl.gearmusicplayer.com/gearupdate.zip'
  appcast 'https://dl.gearmusicplayer.com/gearcast.xml',
          checkpoint: '94ce3e99a213f01fc9d6cf68c8d5a6975d40fadcf0dc1f85e4fd4187c09c4d18'
  name 'Gear Player'
  homepage 'https://www.gearmusicplayer.com/'

  auto_updates true

  app 'Gear Player.app'
end
