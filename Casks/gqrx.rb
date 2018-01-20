cask 'gqrx' do
  version '2.9-1'
  sha256 'd6fdb4ee405c8e0652e0502a2fe6670ad7baf66eb202b0bf8ab6f0aad3100130'

  # github.com/csete/gqrx was verified as official when first introduced to the cask
  url "https://github.com/csete/gqrx/releases/download/v#{version.major_minor}/Gqrx-#{version}.dmg"
  appcast 'https://github.com/csete/gqrx/releases.atom',
          checkpoint: 'ceec115a1c11b2d8c4600fb9448b8ff2de1939c53e4616180e55eb7d2c2000b5'
  name 'Gqrx'
  homepage 'http://gqrx.dk/'

  app 'Gqrx.app'
  binarydir = "#{appdir}/Gqrx.app/Contents/MacOS"
  binary "#{binarydir}/hackrf_spiflash"
  binary "#{binarydir}/airspy_rx"
  binary "#{binarydir}/rtl_sdr"
  binary "#{binarydir}/airspy_info"
  binary "#{binarydir}/rtl_fm"
  binary "#{binarydir}/hackrf_cpldjtag"
  binary "#{binarydir}/airspy_spiflash"
  binary "#{binarydir}/rtl_adsb"
  binary "#{binarydir}/SoapySDRUtil"
  binary "#{binarydir}/rtl_power"
  binary "#{binarydir}/hackrf_transfer"
  binary "#{binarydir}/rtl_eeprom"
  binary "#{binarydir}/gqrx"
  binary "#{binarydir}/hackrf_info"
  binary "#{binarydir}/rtl_test"
  binary "#{binarydir}/rtl_tcp"
  binary "#{binarydir}/hackrf_debug"
  binary "#{binarydir}/volk_profile"
end
