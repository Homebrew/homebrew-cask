cask 'digital-power-station' do
  version '2.0.0.19'
  sha256 '19150a7bf72b52a142c1be2c6c5d763f42d39e7b85a7ab15dad25e5b49717bd3'

  url "http://bongiovidps.com/wp-content/uploads/2016/05/Bongiovi_DPS_Mac_#{version}.zip"
  name 'Bongiovi Digital Power Station Plugin'
  homepage 'http://bongiovidps.com/'

  pkg 'Bongiovi DPS.pkg'

  uninstall pkgutil: 'com.bongiovi.pkg.DigitalPowerStation.*'
end
