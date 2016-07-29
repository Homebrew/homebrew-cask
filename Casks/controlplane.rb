cask 'controlplane' do
  if MacOS.release <= :snow_leopard
    version '1.2.3'
    sha256 '37f93d3a3a17a6e2f24447f0bc74c7e89ec1581ca52e5970960544858c86f909'
  else
    version '1.6.4'
    sha256 '5050f48212390aa7fd4d22677db3a5e1b14db1289ddef52867748a3e1a841ed5'

    appcast 'http://www.controlplaneapp.com/appcast.xml',
            checkpoint: 'c9b44eb0ea2d2c7dd1cde14d60fd00a7cf8b4b6bc5b7b5b75cc4ec836b43aed3'
  end

  url "http://www.controlplaneapp.com/download/#{version}"
  name 'ControlPlane'
  homepage 'http://www.controlplaneapp.com/'
  license :gpl

  depends_on macos: '>= :snow_leopard'

  app 'ControlPlane.app'

  zap delete: '~/Library/Preferences/com.dustinrue.ControlPlane.plist'
end
