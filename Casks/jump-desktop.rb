cask 'jump-desktop' do
  version '6.0.3'
  sha256 'b4776b0bf2dc2932e899690dc041a6e8ee7337f50ff39783f3c40964c6c1e010'

  url 'https://jumpdesktop.com/downloads/jdmac'
  appcast 'http://service.jumpdesktop.com/update/jdmac-web/appcast.xml',
          :sha256 => '005a8cea72fc921ca386d0933b5604087b92f438f234fd5616b4f897021983c0'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'
  license :commercial

  app 'Jump Desktop.app'
end
