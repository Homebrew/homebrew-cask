cask 'blu-ray-player-pro' do
  version '3.2.9'
  sha256 '792bb782fec10576ab69d2980189bf617eca2a9e1acc4b6a65d1ee2e288876b8'

  url 'https://www.macblurayplayer.com/user/download/Macgo_Mac_Bluray_Player_Pro.dmg'
  appcast 'https://macblurayplayer.com/products/mac-bluray-player-pro/Appcast.xml',
          checkpoint: '5a2f9b1e9b0a7c2f202385a752949a945d8c3884692b5432b5534fb599ba6aa9'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
