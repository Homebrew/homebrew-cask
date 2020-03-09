cask 'gqrx' do
  version '2.11.5'
  sha256 '896cefcb2825840178b6dbfb894b01543b1c8225539e6969052133223a59ffee'

  # github.com/csete/gqrx was verified as official when first introduced to the cask
  url "https://github.com/csete/gqrx/releases/download/v#{version.major_minor_patch}/Gqrx-#{version}.dmg"
  appcast 'https://github.com/csete/gqrx/releases.atom'
  name 'Gqrx'
  homepage 'http://gqrx.dk/'

  app 'Gqrx.app'
  binary 'Gqrx.app/Contents/MacOS/airspy_info'
  binary 'Gqrx.app/Contents/MacOS/airspy_rx'
  binary 'Gqrx.app/Contents/MacOS/airspy_spiflash'
  binary 'Gqrx.app/Contents/MacOS/hackrf_cpldjtag'
  binary 'Gqrx.app/Contents/MacOS/hackrf_debug'
  binary 'Gqrx.app/Contents/MacOS/hackrf_info'
  binary 'Gqrx.app/Contents/MacOS/hackrf_spiflash'
  binary 'Gqrx.app/Contents/MacOS/hackrf_transfer'
  binary 'Gqrx.app/Contents/MacOS/rtl_adsb'
  binary 'Gqrx.app/Contents/MacOS/rtl_eeprom'
  binary 'Gqrx.app/Contents/MacOS/rtl_fm'
  binary 'Gqrx.app/Contents/MacOS/rtl_power'
  binary 'Gqrx.app/Contents/MacOS/rtl_sdr'
  binary 'Gqrx.app/Contents/MacOS/rtl_tcp'
  binary 'Gqrx.app/Contents/MacOS/rtl_test'
  binary 'Gqrx.app/Contents/MacOS/SoapySDRUtil', target: 'soapysdrutil'
  binary 'Gqrx.app/Contents/MacOS/volk_profile'
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
