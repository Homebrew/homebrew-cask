cask 'jump' do
  version '8.2.22'
  sha256 '2938536add4c3a3764ba7d20ed81aa0b0b52888b447a900bc95dbd846a083080'

  url "https://mirror.jumpdesktop.com/downloads/JumpDesktopMac-#{version}.zip"
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
