cask 'blu-ray-player-pro' do
  version '3.2.5'
  sha256 '2e7699ca4919be0774268312877dba263578369ebef8a491153c3aa8a54b3077'

  url 'https://www.macblurayplayer.com/user/download/Macgo_Mac_Bluray_Player_Pro.dmg'
  appcast 'https://macblurayplayer.com/products/mac-bluray-player-pro/Appcast.xml',
          checkpoint: 'bd2e05e1508053a82a00d72ae5326056eddeb3b0274b536f9f0abf7040d997e0'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
