cask 'jump' do
  version '8.4.9'
  sha256 '9abfe1a2b78977d75b7bfc5b72596628f566ef23e0ec6745a9957f0b0118302b'

  url "https://mirror.jumpdesktop.com/downloads/JumpDesktopMac-#{version}.zip"
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
