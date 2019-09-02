cask 'gear-player' do
  version '2.2.38'
  sha256 'f72a1b15e2a3af42ca1cf8b28af89281d037f46603d00eee52f6bf735139c917'

  url 'https://dl.gearmusicplayer.com/gear.zip'
  appcast 'https://dl.gearmusicplayer.com/gearcast.xml'
  name 'Gear Player'
  homepage 'https://www.gearmusicplayer.com/'

  auto_updates true

  app 'Gear Player.app'
end
