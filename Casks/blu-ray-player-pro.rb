cask 'blu-ray-player-pro' do
  version '3.2.22'
  sha256 'f90b39874b1c446fe20ade2a2b120bd3d4f4387b7b387a3309fbeadc60849762'

  url 'https://www.macblurayplayer.com/user/download/Macgo_Mac_Bluray_Player_Pro.dmg'
  appcast 'https://macblurayplayer.com/products/mac-bluray-player-pro/Appcast.xml',
          checkpoint: 'a246aad9a7b262a9a7ae7cb701a7db30d72b6fda1f0113d765c8e49c51e22232'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
