cask 'gqrx' do
  version '2.9-1'
  sha256 'd6fdb4ee405c8e0652e0502a2fe6670ad7baf66eb202b0bf8ab6f0aad3100130'

  # github.com/csete/gqrx was verified as official when first introduced to the cask
  url "https://github.com/csete/gqrx/releases/download/v#{version.major_minor}/Gqrx-#{version}.dmg"
  appcast 'https://github.com/csete/gqrx/releases.atom',
          checkpoint: '3fccff79190926fb335ffd2f74bc2188a5cc56ba61781d4569c3a50c5d4f8bca'
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
