cask 'blu-ray-player-pro' do
  version '3.3.11_190214_2228'
  sha256 '7ab9acd63c6306f8f2cd398ec2c9bce9a16e57099a7dc54c1e8abad759ee7b68'

  url "https://cdn.macblurayplayer.com/mac-bluray-player-pro3/Blu-ray_Player_Pro_#{version}.dmg"
  appcast 'https://cdn.macblurayplayer.com/mac-bluray-player-pro3/appcast/Appcast.xml'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
