cask :v1 => 'blu-ray-player' do
  version :latest
  sha256 :no_check

  url 'http://www.macblurayplayer.com/user/download/Mac_Bluray_Player.dmg'
  name 'Macgo Mac Blu-ray Player'
  homepage 'http://www.macblurayplayer.com/'
  license :commercial
  tags :vendor => 'Macgo'

  app 'Blu-ray Player.app'
end
