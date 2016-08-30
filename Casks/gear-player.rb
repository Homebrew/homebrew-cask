cask 'gear-player' do
  version '2.2.29'
  sha256 '47d3cd215198a7fc0fdb0943042a15d2abd8fd670f3388de48bdcfcf18e16f2f'

  url 'https://dl.gearmusicplayer.com/gearupdate.zip'
  appcast 'https://dl.gearmusicplayer.com/gearcast.xml',
          checkpoint: '3ad0ec6ab12d4818f3793ef615e4c716dd3411fe33652e391a55262239a21958'
  name 'Gear Player'
  homepage 'https://www.gearmusicplayer.com'
  license :commercial

  auto_updates true

  app 'Gear Player.app'
end
