cask :v1 => 'macs-fan-control' do
  version :latest
  sha256 :no_check

  url 'http://www.crystalidea.com/downloads/macsfancontrol.zip'
  name 'Macs Fan Control'
  homepage 'http://www.crystalidea.com/macs-fan-control'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Macs Fan Control.app'
end
