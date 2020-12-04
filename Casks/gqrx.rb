cask "gqrx" do
  version "2.14.2"
  sha256 "679143fb2860d8ddbb9e8d88c58477a5cca6064ca47392d87461da497b18f857"

  # github.com/csete/gqrx/ was verified as official when first introduced to the cask
  url "https://github.com/csete/gqrx/releases/download/v#{version.major_minor_patch}/Gqrx-#{version}.dmg"
  appcast "https://github.com/csete/gqrx/releases.atom"
  name "Gqrx"
  desc "Software-defined radio receiver powered by GNU Radio and Qt"
  homepage "https://gqrx.dk/"

  app "Gqrx.app"
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
  binary "#{appdir}/Gqrx.app/Contents/MacOS/SoapySDRUtil", target: "soapysdrutil"
  binary "#{appdir}/Gqrx.app/Contents/MacOS/volk_profile"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/gqrx.wrapper.sh"
  binary shimscript, target: "gqrx"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/Gqrx.app/Contents/MacOS/gqrx' "$@"
    EOS
  end
end
