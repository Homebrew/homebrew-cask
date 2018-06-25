cask 'blu-ray-player-pro' do
  version '3.2.27'
  sha256 '274735e02d5607206ddacf5fc454ae5d307e63bb0d307cc2b859836030421b55'

  url 'https://www.macblurayplayer.com/user/download/Macgo_Mac_Bluray_Player_Pro.dmg'
  appcast 'https://macblurayplayer.com/products/mac-bluray-player-pro/Appcast.xml'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
