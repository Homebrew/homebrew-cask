cask 'blu-ray-player-pro' do
  version '3.2.3'
  sha256 'f5dbfe928bd9d6fd52c3e59a0923a64325b9ca8d6310071e49bc468f35f81d1f'

  url 'https://www.macblurayplayer.com/user/download/Macgo_Mac_Bluray_Player_Pro.dmg'
  appcast 'https://macblurayplayer.com/products/mac-bluray-player-pro/Appcast.xml',
          checkpoint: '3a1e27ceea3acd8d2d0a25ad8f1e0a87fb2380ab09dbc9ae2d2eaf1ae6d53538'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
