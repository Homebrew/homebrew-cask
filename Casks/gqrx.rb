cask 'gqrx' do
  version '2.11.5'
  sha256 '896cefcb2825840178b6dbfb894b01543b1c8225539e6969052133223a59ffee'

  # github.com/csete/gqrx was verified as official when first introduced to the cask
  url "https://github.com/csete/gqrx/releases/download/v#{version.major_minor_patch}/Gqrx-#{version}.dmg"
  appcast 'https://github.com/csete/gqrx/releases.atom',
          checkpoint: 'c980d956978147a115019e46179eac9843792a7653407af703cc2ec5039ba287'
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
