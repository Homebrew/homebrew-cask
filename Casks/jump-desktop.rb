cask 'jump-desktop' do
  version :latest
  sha256 :no_check

  url 'https://jumpdesktop.com/downloads/jdmac'
  appcast 'https://service.jumpdesktop.com/update/jdmac-web/appcast.xml',
          :sha256 => '146cdb8cdc75e641405a08aa9d409ac2aec195520aacd5c632fdac68ba3ba563'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'
  license :commercial

  app 'Jump Desktop.app'
end
