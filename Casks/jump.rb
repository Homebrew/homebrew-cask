cask 'jump' do
  version '8.4.3'
  sha256 'c879dc05f2415f64d26b23b6f753e88d0a10382c87112cbd6e32ee7659e419f3'

  url "https://mirror.jumpdesktop.com/downloads/JumpDesktopMac-#{version}.zip"
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
