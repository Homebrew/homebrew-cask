cask 'gear-player' do
  version '2.2.21'
  sha256 '95461d52a45019460afee7d0e3a32102755ff60bd75d9c86d2db1941a4c688c4'

  url 'https://dl.gearmusicplayer.com/gearupdate.zip'
  appcast 'https://dl.gearmusicplayer.com/gearcast.xml',
          :sha256 => '594b38a46538ffb93a5ecb4c0d99d6b541f82a9ed55a28822823e1ad970d4529'
  name 'Gear Player'
  homepage 'https://www.gearmusicplayer.com'
  license :commercial

  auto_updates true

  app 'Gear Player.app'
end
