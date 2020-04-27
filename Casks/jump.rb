cask 'jump' do
  version '8.5.10'
  sha256 '9991fa64892e8cfe7f302925cb28885bc3d431a4888a92fa6babb0866e46141d'

  url "https://mirror.jumpdesktop.com/downloads/JumpDesktopMac-#{version}.zip"
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
