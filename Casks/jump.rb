cask 'jump' do
  version '8.5.0'
  sha256 '7ae6338d9d1e30fc9694ecf820abfa0776f1a28690b68e83c68307e48dfe6905'

  url "https://mirror.jumpdesktop.com/downloads/JumpDesktopMac-#{version}.zip"
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
