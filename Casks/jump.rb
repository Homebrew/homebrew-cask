cask 'jump' do
  version '8.2.14'
  sha256 'f1f57d691b8ecd88c4a69541dd769f85d6621682e33e6db77adb9fa7d11232bc'

  url 'https://jumpdesktop.com/downloads/jdmac'
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
