cask 'gear-player' do
  version '2.2.21'
  sha256 '95461d52a45019460afee7d0e3a32102755ff60bd75d9c86d2db1941a4c688c4'

  url 'https://dl.gearmusicplayer.com/gearupdate.zip'
  appcast 'https://dl.gearmusicplayer.com/gearcast.xml',
          checkpoint: 'c5db87d09816d0a9d055fef0a2287b66576ac7f98f258b2fe9f273b8b0bb8801'
  name 'Gear Player'
  homepage 'https://www.gearmusicplayer.com'
  license :commercial

  auto_updates true

  app 'Gear Player.app'
end
