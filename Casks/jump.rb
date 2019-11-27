cask 'jump' do
  version '8.4.7'
  sha256 '7ba7fdf0c2858fd263f19c5fa3a41adf48a0ab69b7ea058cfc32a1287adb632d'

  url "https://mirror.jumpdesktop.com/downloads/JumpDesktopMac-#{version}.zip"
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
