cask 'jump' do
  version '8.5.8'
  sha256 '74166bdcd41e03b12979a900d89d75c1bdce233c8e8354133f811154b600eaff'

  url "https://mirror.jumpdesktop.com/downloads/JumpDesktopMac-#{version}.zip"
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
