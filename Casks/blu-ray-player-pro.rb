cask 'blu-ray-player-pro' do
  version '3.2.13'
  sha256 '4c1b4c14809d3802e9ce0be768cb36680337641ff7e7df9b443d14f3e4941a9f'

  url 'https://www.macblurayplayer.com/user/download/Macgo_Mac_Bluray_Player_Pro.dmg'
  appcast 'https://macblurayplayer.com/products/mac-bluray-player-pro/Appcast.xml',
          checkpoint: 'd04be6f085decb9d8893fd5379a5d5030886c0c35373af2c5e4f50f27b6c2e7a'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
