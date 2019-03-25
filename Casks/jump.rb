cask 'jump' do
  version '8.2.17'
  sha256 '2a68bc68c2f2dd6c1b506b1ffc2346510992714b03b34950e4dc0f3f71eecd52'

  url "https://mirror.jumpdesktop.com/downloads/JumpDesktopMac-#{version}.zip"
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
