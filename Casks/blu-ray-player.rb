cask 'blu-ray-player' do
  version :latest
  sha256 :no_check

  url 'https://www.macblurayplayer.com/user/download/Mac_Bluray_Player.dmg'
  name 'Macgo Mac Blu-ray Player'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player.app'
end
