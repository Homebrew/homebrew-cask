cask 'gear-player' do
  version '2.2.25'
  sha256 '183863061ca69cfe860d5bed80d42d2b89bf67f8da213f0b9be6e266f3c46a8b'

  url 'https://dl.gearmusicplayer.com/gearupdate.zip'
  appcast 'https://dl.gearmusicplayer.com/gearcast.xml',
          checkpoint: '80c5664f99d419c1ea1dcd195ec7f61314992a08a514d4d7df29f19064cc08f5'
  name 'Gear Player'
  homepage 'https://www.gearmusicplayer.com'
  license :commercial

  auto_updates true

  app 'Gear Player.app'
end
