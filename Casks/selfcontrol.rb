cask 'selfcontrol' do
  if MacOS.release <= :snow_leopard
    version '1.5.1'
    sha256 'd3823a1e9ba0b47dc2cb39c93cd51837c2dafc7d5a5a564825f4a440fd2ab9ad'
  else
    version '2.1.1'
    sha256 'ac492ce596f7189088db56c1e8a2663504d1036264745a66a7202fe5b4dca6e8'
  end

  url "http://downloads.selfcontrolapp.com/SelfControl-#{version}.zip"
  appcast 'https://selfcontrolapp.com/SelfControlAppcast.xml',
          checkpoint: 'a9489ea50c593d5b340cf519f6f14ae3f0051f32ec70a3082c125afa86c6d385'
  name 'SelfControl'
  homepage 'https://selfcontrolapp.com/'
  license :gpl

  auto_updates true

  app 'SelfControl.app'

  zap delete: '~/Library/Preferences/org.eyebeam.SelfControl.plist'
end
