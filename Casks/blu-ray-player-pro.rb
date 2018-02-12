cask 'blu-ray-player-pro' do
  version '3.2.19'
  sha256 'd61a25676fc9402266842d2f73264b141dd3e56e82e30222629f9ad9d93b08a1'

  url 'https://www.macblurayplayer.com/user/download/Macgo_Mac_Bluray_Player_Pro.dmg'
  appcast 'https://macblurayplayer.com/products/mac-bluray-player-pro/Appcast.xml',
          checkpoint: 'f51bcd4a9226ed0eb5816f77efe2485ea6472c656ee53ebe9dff125534e5d156'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
