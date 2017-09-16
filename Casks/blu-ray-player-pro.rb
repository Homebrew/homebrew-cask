cask 'blu-ray-player-pro' do
  version '3.2.8'
  sha256 'd7d22fbf8e74289b1676775c46b8e2834e856e61249520a6c3b3e2e00dd0123d'

  url 'https://www.macblurayplayer.com/user/download/Macgo_Mac_Bluray_Player_Pro.dmg'
  appcast 'https://macblurayplayer.com/products/mac-bluray-player-pro/Appcast.xml',
          checkpoint: '8b707cbfa7dfeee6e7b9bc39422f581f023543805ef3aa80f1064d155bbffa9a'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
