cask :v1 => 'jump-desktop' do
  version :latest
  sha256 :no_check

  url 'http://jumpdesktop.com/downloads/jdmac'
  name 'Jump Desktop'
  appcast 'http://service.jumpdesktop.com/update/jdmac-web/appcast.xml',
          :sha256 => '146cdb8cdc75e641405a08aa9d409ac2aec195520aacd5c632fdac68ba3ba563'
  homepage 'http://jumpdesktop.com/#jdmac'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Jump Desktop.app'
end
