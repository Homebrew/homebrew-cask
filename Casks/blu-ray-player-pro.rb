cask 'blu-ray-player-pro' do
  version '3.3.13_190402_2324'
  sha256 'f993dd869641d05bfcec8f7cb97765e7ddc273bd48b2d4b484f458cbb54c35f2'

  url "https://cdn.macblurayplayer.com/mac-bluray-player-pro3/Blu-ray_Player_Pro_#{version}.dmg"
  appcast 'https://cdn.macblurayplayer.com/mac-bluray-player-pro3/appcast/Appcast.xml'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
