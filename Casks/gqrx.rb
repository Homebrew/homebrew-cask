cask 'gqrx' do
  version '2.11.2-1'
  sha256 '06d89f420aa73fe63d6923234c5d3275a13d20d0dfab58936512917a1425ee8e'

  # github.com/csete/gqrx was verified as official when first introduced to the cask
  url "https://github.com/csete/gqrx/releases/download/v#{version.major_minor_patch}/Gqrx-#{version}.dmg"
  appcast 'https://github.com/csete/gqrx/releases.atom',
          checkpoint: '83d183cf1223ddac7a54d40f94f0e144a425d740e8bc717427c6b0533c649b41'
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
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/gqrx.wrapper.sh"
  binary shimscript, target: 'gqrx'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/Gqrx.app/Contents/MacOS/gqrx' "$@"
    EOS
  end
end
