cask 'blu-ray-player' do
  version '2.17.4.3289'
  sha256 '16dbbbd9a154334700eab74e333d059710a961409f75af74499de4cc04eca7a4'

  url 'https://www.macblurayplayer.com/user/download/Mac_Bluray_Player.dmg'
  appcast 'https://www.macblurayplayer.com/products/mac-bluray-player/update_mac'
  name 'Macgo Mac Blu-ray Player'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player.app'
end
