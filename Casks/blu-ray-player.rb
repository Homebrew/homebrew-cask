cask 'blu-ray-player' do
  version '2.17.2.2614'
  sha256 'bcd807d339bd5fa51464ec52a42d88258237613859da4ad543d5eff00f96e8e2'

  url 'https://www.macblurayplayer.com/user/download/Mac_Bluray_Player.dmg'
  appcast 'https://www.macblurayplayer.com/products/mac-bluray-player/update_mac'
  name 'Macgo Mac Blu-ray Player'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player.app'
end
