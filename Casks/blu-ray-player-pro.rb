cask 'blu-ray-player-pro' do
  version '3.3.14_190425_1634'
  sha256 '718334d18fc2030ebd72609ff45f8af29a53936fb0d0efdc819ec0c0eaf91fa5'

  url "https://cdn.macblurayplayer.com/mac-bluray-player-pro3/Blu-ray_Player_Pro_#{version}.dmg"
  appcast 'https://cdn.macblurayplayer.com/mac-bluray-player-pro3/appcast/Appcast.xml'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
