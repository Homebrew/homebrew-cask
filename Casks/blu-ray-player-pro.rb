cask 'blu-ray-player-pro' do
  version '3.2.10'
  sha256 'df2f187616a5eeaa2619f1531976175756332aa0af67d6f393c02b09cb8e8475'

  url 'https://www.macblurayplayer.com/user/download/Macgo_Mac_Bluray_Player_Pro.dmg'
  appcast 'https://macblurayplayer.com/products/mac-bluray-player-pro/Appcast.xml',
          checkpoint: 'a9ec4a746e8e7d64a2bd92f1d3119776ff2126ac2609a716b943603e0ff7d9a4'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
