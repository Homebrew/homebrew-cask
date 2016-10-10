cask 'gear-player' do
  version '2.2.30'
  sha256 '4723688e3c8a68dfc9079ca4692787051d69831b0f76a49fe6f78081f0c8ce04'

  url 'https://dl.gearmusicplayer.com/gearupdate.zip'
  appcast 'https://dl.gearmusicplayer.com/gearcast.xml',
          checkpoint: '3ad0ec6ab12d4818f3793ef615e4c716dd3411fe33652e391a55262239a21958'
  name 'Gear Player'
  homepage 'https://www.gearmusicplayer.com'

  auto_updates true

  app 'Gear Player.app'
end
