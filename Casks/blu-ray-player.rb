cask 'blu-ray-player' do
  version '3.3.18,190918'
  sha256 'd1ab2f2b57fa3b3ce4bde9cc3b241a3c5c48af593f1a97959a509eb9d4ef284f'

  url 'https://www.macblurayplayer.com/user/download/Mac_Bluray_Player.dmg'
  appcast "https://cdn.macblurayplayer.com/mac-bluray-player-#{version.major}/appcast/Appcast.xml"
  name 'Macgo Mac Blu-ray Player'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player.app'
end
