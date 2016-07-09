cask 'gear-player' do
  version '2.2.27'
  sha256 'ad82c6bcbee15e3d75f704d1c70c46ddbc3f5cada61bacd74c13a81eb3474ae7'

  url 'https://dl.gearmusicplayer.com/gearupdate.zip'
  appcast 'https://dl.gearmusicplayer.com/gearcast.xml',
          checkpoint: 'e45ff68683505ec1b24f23c8195ffaf31846df05f39e0895ba36aae873daa673'
  name 'Gear Player'
  homepage 'https://www.gearmusicplayer.com'
  license :commercial

  auto_updates true

  app 'Gear Player.app'
end
