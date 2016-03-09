cask 'gear-player' do
  version '2.2.22'
  sha256 'd08a938272441c2c62d7678e732b56330a910db495119fe3fc25d2250806583f'

  url 'https://dl.gearmusicplayer.com/gearupdate.zip'
  appcast 'https://dl.gearmusicplayer.com/gearcast.xml',
          checkpoint: 'b21b8393fec67538bba244585ede91e5d2efa42d89b98f0bd7754f332beed212'
  name 'Gear Player'
  homepage 'https://www.gearmusicplayer.com'
  license :commercial

  auto_updates true

  app 'Gear Player.app'
end
