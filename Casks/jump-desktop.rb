cask 'jump-desktop' do
  version '7.1'
  sha256 '04ed00b7b8541a401cc82581104717d0907b5caa89bb0dd3bf47cd150fbfec3e'

  url 'https://jumpdesktop.com/downloads/jdmac'
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml',
          checkpoint: '49a7a6dc29a502b4c59437b58b4e8152c9031a702f3be0fdd90b06e779942900'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
