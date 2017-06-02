cask 'jump-desktop' do
  version '7.0.7'
  sha256 '7eeeca689bb6b9e7dc15f3504b1d6d1b38a157e641a21d9fd6bd19d309b80530'

  url 'https://jumpdesktop.com/downloads/jdmac'
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml',
          checkpoint: 'e4d2e7585f198bdc3d75928444c69e14a1e3dd5366b225a7b25238d37470026d'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
