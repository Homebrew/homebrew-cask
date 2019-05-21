cask 'blu-ray-player-pro' do
  version '3.3.15_190521_0003'
  sha256 '2d302086dc070c1f2040340b0108726206f33789450ed3a1ed2cd62a9437123a'

  url "https://cdn.macblurayplayer.com/mac-bluray-player-pro3/Blu-ray_Player_Pro_#{version}.dmg"
  appcast 'https://cdn.macblurayplayer.com/mac-bluray-player-pro3/appcast/Appcast.xml'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
