cask 'jump' do
  version '8.2.16'
  sha256 '1d9e5e14a98bac66091ccc11d857d6980442b7beb9ff73d700d7de6811249ec7'

  url 'https://jumpdesktop.com/downloads/jdmac'
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
