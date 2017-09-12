cask 'blu-ray-player-pro' do
  version '3.2.7'
  sha256 'eaef79b70877fd5ea221fa06c3cbcd8b4f8aa1530dceff6c37897dece8e5763f'

  url 'https://www.macblurayplayer.com/user/download/Macgo_Mac_Bluray_Player_Pro.dmg'
  appcast 'https://macblurayplayer.com/products/mac-bluray-player-pro/Appcast.xml',
          checkpoint: '6631bf86fd7e361ff7e50539d531637a3145fa2a959a89efc625d523b2ccfff2'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
