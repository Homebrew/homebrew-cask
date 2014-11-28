cask :v1 => 'escritorio-movistar' do
  version '8.9'
  sha256 '0709299be3faf37e99497ffdf6668c6f0f90cb335fa86e797f8a04548a65689b'

  url "http://www.movistar.es/estaticos/descargaaplicaciones/Escritorio%20Movistar_v#{version}.pkg"
  homepage 'http://www.movistar.es/particulares/servicios/descargaaplicaciones'
  license :unknown

  pkg "Escritorio Movistar_v#{version}.pkg"

  uninstall :quit => 'com.movistar.tgcm.devel.tme',
            :pkgutil => [
                          'com.ZTE.DatacardDriver.MacV1.3.41NDISICAEM1000.01.02',
                          'com.bellardo.driver.HuaweiDataCardDriver',
                          'com.movistar.tgcm.tme',
                          'com.novatelwireless.3G'
                        ]

  caveats do
    reboot
  end
end
