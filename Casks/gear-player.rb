cask 'gear-player' do
  version '2.2.23'
  sha256 '40d4eb262730c9ed3663530aa1b78fb79a01eab2bdc65f19fb77e1786a9f6e85'

  url 'https://dl.gearmusicplayer.com/gearupdate.zip'
  appcast 'https://dl.gearmusicplayer.com/gearcast.xml',
          checkpoint: 'aba787ebd4984d4ddeb44747f660af4153f28f73c0ab1aac7a3ec3495f6f7518'
  name 'Gear Player'
  homepage 'https://www.gearmusicplayer.com'
  license :commercial

  auto_updates true

  app 'Gear Player.app'
end
