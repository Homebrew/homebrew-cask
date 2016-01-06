cask 'gear-player' do
  version :latest
  sha256 :no_check

  url 'https://dl.gearmusicplayer.com/gear.zip'
  appcast 'https://dl.gearmusicplayer.com/gearcast.xml',
          :sha256 => '48497b373d97e37f2bdf93aa4ff730f415a8731acec07083175d538343e5404e'
  name 'Gear Player'
  homepage 'https://www.gearmusicplayer.com'
  license :commercial

  auto_updates true

  app 'Gear Player.app'
end
