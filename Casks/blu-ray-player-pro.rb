cask 'blu-ray-player-pro' do
  version '3.2.6'
  sha256 '099b50c0ebde950bb07fb67af691e6b9585aaf208dff03c0a6de2590f9c3be4a'

  url 'https://www.macblurayplayer.com/user/download/Macgo_Mac_Bluray_Player_Pro.dmg'
  appcast 'https://macblurayplayer.com/products/mac-bluray-player-pro/Appcast.xml',
          checkpoint: 'c427cfe727284276cb23a0dc5cc7f65e6f3114574ff4b9dd33c6538443c62828'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
