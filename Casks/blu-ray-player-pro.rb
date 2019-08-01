cask 'blu-ray-player-pro' do
  version '3.3.16_190619_2216'
  sha256 'c6851f5d4647d050044f6c590b9b3e356e67dcf1587363d9db3f8d016bb24886'

  url "https://cdn.macblurayplayer.com/mac-bluray-player-pro3/Blu-ray_Player_Pro_#{version}.dmg"
  appcast 'https://cdn.macblurayplayer.com/mac-bluray-player-pro3/appcast/Appcast.xml'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
