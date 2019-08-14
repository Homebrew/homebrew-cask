cask 'blu-ray-player-pro' do
  version '3.3.17_190812_2322'
  sha256 'ed8d558796bcb17697e848b9a9d30e5616531618d25ce3e5aa581474e04a07fe'

  url "https://cdn.macblurayplayer.com/mac-bluray-player-pro3/Blu-ray_Player_Pro_#{version}.dmg"
  appcast 'https://cdn.macblurayplayer.com/mac-bluray-player-pro3/appcast/Appcast.xml'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
