cask 'gear-player' do
  version '2.2.32'
  sha256 '6d12b4318e7a965ff31893d244bb8c0f614417d7c45a6d912d83e6ea5d7f2454'

  url 'https://dl.gearmusicplayer.com/gearupdate.zip'
  appcast 'https://dl.gearmusicplayer.com/gearcast.xml',
          checkpoint: '925dafce924b93bafed67f306b28bd5e8e2a464b029e474c6fb9b5688ad0817d'
  name 'Gear Player'
  homepage 'https://www.gearmusicplayer.com/'

  auto_updates true

  app 'Gear Player.app'
end
