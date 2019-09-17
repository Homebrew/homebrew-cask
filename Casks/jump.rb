cask 'jump' do
  version '8.3.8'
  sha256 '0a607d8e74dae9a41221f73da7495d8714b4584333c9e4a85cd72f0704c5c2fa'

  url "https://mirror.jumpdesktop.com/downloads/JumpDesktopMac-#{version}.zip"
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
