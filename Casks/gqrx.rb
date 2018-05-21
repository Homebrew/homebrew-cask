cask 'gqrx' do
  version '2.11.4'
  sha256 '56bfcfe071e1e3ca19fe599f91150894ef1206a4babd0e08f23efa9999825e01'

  # github.com/csete/gqrx was verified as official when first introduced to the cask
  url "https://github.com/csete/gqrx/releases/download/v#{version.major_minor_patch}/Gqrx-#{version}.dmg"
  appcast 'https://github.com/csete/gqrx/releases.atom',
          checkpoint: '2602e49adc35a61db9d2f7e1843d1502078be353e6b7a3a9c77492710b1591f6'
  name 'Gqrx'
  homepage 'http://gqrx.dk/'

  app 'Gqrx.app'
  binary "#{appdir}/Gqrx.app/Contents/MacOS/airspy_info"
  binary "#{appdir}/Gqrx.app/Contents/MacOS/airspy_rx"
  binary "#{appdir}/Gqrx.app/Contents/MacOS/airspy_spiflash"
  binary "#{appdir}/Gqrx.app/Contents/MacOS/hackrf_cpldjtag"
  binary "#{appdir}/Gqrx.app/Contents/MacOS/hackrf_debug"
  binary "#{appdir}/Gqrx.app/Contents/MacOS/hackrf_info"
  binary "#{appdir}/Gqrx.app/Contents/MacOS/hackrf_spiflash"
  binary "#{appdir}/Gqrx.app/Contents/MacOS/hackrf_transfer"
  binary "#{appdir}/Gqrx.app/Contents/MacOS/rtl_adsb"
  binary "#{appdir}/Gqrx.app/Contents/MacOS/rtl_eeprom"
  binary "#{appdir}/Gqrx.app/Contents/MacOS/rtl_fm"
  binary "#{appdir}/Gqrx.app/Contents/MacOS/rtl_power"
  binary "#{appdir}/Gqrx.app/Contents/MacOS/rtl_sdr"
  binary "#{appdir}/Gqrx.app/Contents/MacOS/rtl_tcp"
  binary "#{appdir}/Gqrx.app/Contents/MacOS/rtl_test"
  binary "#{appdir}/Gqrx.app/Contents/MacOS/SoapySDRUtil", target: 'soapysdrutil'
  binary "#{appdir}/Gqrx.app/Contents/MacOS/volk_profile"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/gqrx.wrapper.sh"
  binary shimscript, target: 'gqrx'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/Gqrx.app/Contents/MacOS/gqrx' "$@"
    EOS
  end
end
