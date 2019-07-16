cask 'blu-ray-player' do
  version '3.3.16,190627'
  sha256 'ef5f0f4d8236301d8314c798b1f520c25d24579d0fe2024739316b33c2959b3e'

  url 'https://www.macblurayplayer.com/user/download/Mac_Bluray_Player.dmg'
  appcast "https://cdn.macblurayplayer.com/mac-bluray-player-#{version.major}/appcast/Appcast.xml"
  name 'Macgo Mac Blu-ray Player'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player.app'
end
