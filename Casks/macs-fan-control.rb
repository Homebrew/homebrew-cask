cask :v1 => 'macs-fan-control' do
  version :latest
  sha256 :no_check

  url 'http://www.crystalidea.com/downloads/macsfancontrol.zip'
  homepage 'http://www.crystalidea.com/macs-fan-control'
  license :unknown

  app 'Macs Fan Control.app'
end
