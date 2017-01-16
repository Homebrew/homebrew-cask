cask 'macs-fan-control' do
  if MacOS.version <= :snow_leopard
    version '1.2.1.0'
    sha256 '6e47db508e2fbb54c626a9ba37baeeda0d6acc920a9f07b6d7c3526fc11d898e'
    url 'http://www.crystalidea.com/downloads/legacy/macsfancontrol_10.6.zip'
  else
    version :latest
    sha256 :no_check
    url 'http://www.crystalidea.com/downloads/macsfancontrol.zip'
  end

  name 'Macs Fan Control'
  homepage 'https://www.crystalidea.com/macs-fan-control'

  app 'Macs Fan Control.app'

  zap delete: '~/Libary/Preferences/com.crystalidea.MacsFanControl.plist'
end
