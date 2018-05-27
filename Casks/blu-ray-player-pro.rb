cask 'blu-ray-player-pro' do
  version '3.2.26'
  sha256 'aafb2fab6a14d3509d7af5c33c103d6b442fbbfbd404091fb5d4e2dfd7cca245'

  url 'https://www.macblurayplayer.com/user/download/Macgo_Mac_Bluray_Player_Pro.dmg'
  appcast 'https://macblurayplayer.com/products/mac-bluray-player-pro/Appcast.xml',
          checkpoint: '81c5d9798203961f12f665be11637d920fd0a416d77eb7594b3ff6d9a777d539'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
