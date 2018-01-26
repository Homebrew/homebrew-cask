cask 'blu-ray-player-pro' do
  version '3.2.16'
  sha256 'dd027c2e9645e8a72ae05eb4a57fc198cc02a6f2005bf0cbfdd8cd0e4badef25'

  url 'https://www.macblurayplayer.com/user/download/Macgo_Mac_Bluray_Player_Pro.dmg'
  appcast 'https://macblurayplayer.com/products/mac-bluray-player-pro/Appcast.xml',
          checkpoint: '8869bf2db704f1846e9914b9c9a9a241ebd7716c62beec296bb0d10fd3295b2c'
  name 'Macgo Mac Blu-ray Player Pro'
  homepage 'https://www.macblurayplayer.com/'

  app 'Blu-ray Player Pro.app'
end
