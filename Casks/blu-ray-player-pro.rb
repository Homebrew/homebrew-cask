cask 'blu-ray-player-pro' do
  version '3.2.15'
  sha256 'f4b23747fd75e977eb1b4a77fe4818d60b087d9ecb15af2601946829a6fe4d11'

  url 'https://www.macblurayplayer.com/user/download/Macgo_Mac_Bluray_Player_Pro.dmg'
  appcast 'https://macblurayplayer.com/products/mac-bluray-player-pro/Appcast.xml',
          checkpoint: '7fd8f546f45988c44929c70b2db5786dc2013d33c57762796d6b18a98c52cbe2'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
