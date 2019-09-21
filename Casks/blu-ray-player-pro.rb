cask 'blu-ray-player-pro' do
  version '3.3.18_190918_1722'
  sha256 'ecc0a9a4bebb70cdbe9a09340c5333add9515c81f7637f8337a67068a03fb6f1'

  url "https://cdn.macblurayplayer.com/mac-bluray-player-pro3/Blu-ray_Player_Pro_#{version}.dmg"
  appcast 'https://cdn.macblurayplayer.com/mac-bluray-player-pro3/appcast/Appcast.xml'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
