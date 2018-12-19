cask 'blu-ray-player-pro' do
  version '3.3.9_181214_0031'
  sha256 'f933ccb2be998e94d02215343c3cacc67235fcf2b464533eda3631eab3a70f37'

  url "https://cdn.macblurayplayer.com/mac-bluray-player-pro3/Blu-ray_Player_Pro_#{version}.dmg"
  appcast 'https://cdn.macblurayplayer.com/mac-bluray-player-pro3/appcast/Appcast.xml'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
