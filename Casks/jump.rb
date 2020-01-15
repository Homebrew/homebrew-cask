cask 'jump' do
  version '8.4.10'
  sha256 'c9babce353e580875bbd68541827544c1b90aba4c2c57cc3ee32c51e20413768'

  url "https://mirror.jumpdesktop.com/downloads/JumpDesktopMac-#{version}.zip"
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
