cask 'blu-ray-player-pro' do
  version '3.2.8'
  sha256 'c50c83d44f869378ee124ce112a68c921915329473d6e2d8379e74c50b958513'

  url 'https://www.macblurayplayer.com/user/download/Macgo_Mac_Bluray_Player_Pro.dmg'
  appcast 'https://macblurayplayer.com/products/mac-bluray-player-pro/Appcast.xml',
          checkpoint: 'ff5641c5f72850851eea3b7ee45730d5db2785b652c203aaaa5eb00b180eda1f'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
