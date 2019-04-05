cask 'jump' do
  version '8.2.19'
  sha256 '4b225ce89d58d6ac1eb813768b48b8a5abf7211a3666acde6d766df076229518'

  url "https://mirror.jumpdesktop.com/downloads/JumpDesktopMac-#{version}.zip"
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
