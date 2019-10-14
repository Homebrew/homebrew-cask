cask 'jump' do
  version '8.3.11'
  sha256 '521653331deff095e97e94f4f6146d2d63302ef15630d1cd4c76e2ffa1b903f9'

  url "https://mirror.jumpdesktop.com/downloads/JumpDesktopMac-#{version}.zip"
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
