cask 'jump' do
  version '8.2.21'
  sha256 'e9922796b811938eb39f7dfddd923466b3db2676f60fee2a5ed6ed75745888b3'

  url "https://mirror.jumpdesktop.com/downloads/JumpDesktopMac-#{version}.zip"
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
