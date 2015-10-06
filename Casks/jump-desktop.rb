cask :v1 => 'jump-desktop' do
  version :latest
  sha256 :no_check

  url 'http://jumpdesktop.com/downloads/jdmac'
  name 'Jump Desktop'
  appcast 'http://service.jumpdesktop.com/update/jdmac-web/appcast.xml',
          :sha256 => '005a8cea72fc921ca386d0933b5604087b92f438f234fd5616b4f897021983c0'
  homepage 'http://jumpdesktop.com/#jdmac'
  license :commercial

  app 'Jump Desktop.app'
end
