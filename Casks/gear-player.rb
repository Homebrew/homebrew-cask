cask 'gear-player' do
  version '2.2.38'
  sha256 'fba05445b105728a9647aaae5c7712ad85fbaf0dcd25e1f579220ae0c6f2668d'

  url 'https://dl.gearmusicplayer.com/gear.zip'
  appcast 'https://dl.gearmusicplayer.com/gearcast.xml'
  name 'Gear Player'
  homepage 'https://www.gearmusicplayer.com/'

  auto_updates true

  app 'Gear Player.app'
end
