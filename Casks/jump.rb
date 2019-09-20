cask 'jump' do
  version '8.3.10'
  sha256 'b6b8be3e758556ed56a6e7caa11c2210753dfaf741ceedb297a49a09d7e9569d'

  url "https://mirror.jumpdesktop.com/downloads/JumpDesktopMac-#{version}.zip"
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
