cask 'blu-ray-player-pro' do
  version '3.3.3_180822_2112'
  sha256 '3180b8f06bc4974fe334436da47a7e9b485489eea9f6073a78699404bfc4c1a3'

  url "https://cdn.macblurayplayer.com/mac-bluray-player-pro3/Blu-ray_Player_Pro_#{version}.dmg"
  appcast 'https://cdn.macblurayplayer.com/mac-bluray-player-pro3/appcast/Appcast.xml'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
