cask 'blu-ray-player-pro' do
  version '3.2.25'
  sha256 '876a09b0aedc09550d0de1f448101f9c96b0e79c0473d0d40db53ff1e130f8c0'

  url 'https://www.macblurayplayer.com/user/download/Macgo_Mac_Bluray_Player_Pro.dmg'
  appcast 'https://macblurayplayer.com/products/mac-bluray-player-pro/Appcast.xml',
          checkpoint: 'b5a80e64994c1efbc1b488e785870ee6513abe28a42123cd0bf62e5998bc072a'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
