cask 'blu-ray-player-pro' do
  version '3.2.21'
  sha256 '90b89fb4dafe174451eaa02742d3d5139fd654cdc5b220ccc2231091431ff8b2'

  url 'https://www.macblurayplayer.com/user/download/Macgo_Mac_Bluray_Player_Pro.dmg'
  appcast 'https://macblurayplayer.com/products/mac-bluray-player-pro/Appcast.xml',
          checkpoint: '6b576af81bc4d8fc63a8ba04a71a092df4ca14caf1f8a84390f95716f956c35f'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
