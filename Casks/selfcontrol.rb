cask 'selfcontrol' do
  if MacOS.version <= :snow_leopard
    version '1.5.1'
    sha256 'd3823a1e9ba0b47dc2cb39c93cd51837c2dafc7d5a5a564825f4a440fd2ab9ad'
  else
    version '2.1.1'
    sha256 'ac492ce596f7189088db56c1e8a2663504d1036264745a66a7202fe5b4dca6e8'
  end

  url "http://downloads.selfcontrolapp.com/SelfControl-#{version}.zip"
  appcast 'https://selfcontrolapp.com/SelfControlAppcast.xml',
          checkpoint: '731efae243c693b57617da396c134fc23263b944b3af7d5e3e77ebf6ed2ab6fe'
  name 'SelfControl'
  homepage 'https://selfcontrolapp.com/'

  auto_updates true

  app 'SelfControl.app'

  zap delete: '~/Library/Preferences/org.eyebeam.SelfControl.plist'
end
