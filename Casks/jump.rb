cask 'jump' do
  version '8.1.6'
  sha256 '1adde735677f316f1e84c320b4ba17249ee5618be837b4ec02fe4e19ec548592'

  url 'https://jumpdesktop.com/downloads/jdmac'
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
