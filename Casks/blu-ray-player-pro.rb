cask 'blu-ray-player-pro' do
  version '3.2.20'
  sha256 '9d8c477c0f1efe0a2721f4b2d05728873a19ad7bf4ff90a170f34a1e75486b3b'

  url 'https://www.macblurayplayer.com/user/download/Macgo_Mac_Bluray_Player_Pro.dmg'
  appcast 'https://macblurayplayer.com/products/mac-bluray-player-pro/Appcast.xml',
          checkpoint: 'ff08e40c38c1adddbd1c494f8bde8cf58e124aff819e266f02579f99e58f04bc'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
