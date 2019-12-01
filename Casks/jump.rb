cask 'jump' do
  version '8.4.8'
  sha256 'cc1f0f7b5c3b279bb6b94a2b2d49e5ea73f9ca27b790668cfd3493c6e16b0051'

  url "https://mirror.jumpdesktop.com/downloads/JumpDesktopMac-#{version}.zip"
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
