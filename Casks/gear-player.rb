cask 'gear-player' do
  version '2.2.21'
  sha256 '95461d52a45019460afee7d0e3a32102755ff60bd75d9c86d2db1941a4c688c4'

  url 'https://dl.gearmusicplayer.com/gearupdate.zip'
  appcast 'https://dl.gearmusicplayer.com/gearcast.xml',
          :sha256 => 'f2bb7dff6cb9810cc336fd29fb845a2b9e97ff30db7ea2fd713ac645af17d4c7'
  name 'Gear Player'
  homepage 'https://www.gearmusicplayer.com'
  license :commercial

  auto_updates true

  app 'Gear Player.app'
end
