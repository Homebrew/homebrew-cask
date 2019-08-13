cask 'blu-ray-player' do
  version '3.3.17,190812'
  sha256 'ea492419be6400530414cb3921f15dde4cf24d9f5445df56178756ee116a2862'

  url 'https://www.macblurayplayer.com/user/download/Mac_Bluray_Player.dmg'
  appcast "https://cdn.macblurayplayer.com/mac-bluray-player-#{version.major}/appcast/Appcast.xml"
  name 'Macgo Mac Blu-ray Player'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player.app'
end
