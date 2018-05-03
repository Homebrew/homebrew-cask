cask 'blu-ray-player-pro' do
  version '3.2.23'
  sha256 'cd3a0e67b1f3cd740475e40c5236b22f470c71c0ee6003b937d560591408fb18'

  url 'https://www.macblurayplayer.com/user/download/Macgo_Mac_Bluray_Player_Pro.dmg'
  appcast 'https://macblurayplayer.com/products/mac-bluray-player-pro/Appcast.xml',
          checkpoint: '6678ca6d4f96fbd88f0a0bfa796104ec59d664b71767d5aea886761ec6d1077e'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
