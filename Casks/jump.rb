cask 'jump' do
  version '8.5.15'
  sha256 'e90e0211481a52bc74dac39bb9847bfe605fdce628225d87ef9c8961985bfed9'

  url 'https://dl.jumpdesktop.com/downloads/JumpDesktopMac.zip'
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'

  zap trash: '~/Documents/JumpDesktop'
end
