cask 'praat' do
  if Hardware::CPU.is_32_bit? || MacOS.version <= :leopard
    version '6.0.16'
    sha256 'cd9d7b8c5d48e2d7f0673e0aa13e82e198f66e958d173d679e38a94abb1b2435'
    url "http://www.fon.hum.uva.nl/praat/old/#{version.no_dots}/praat#{version.no_dots}_mac32.dmg"
  else
    version '6.0.18'
    sha256 'b28fc804c8561f72af1b51ed516b92cf2c39725733b8147ae84797a051d1c387'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.no_dots}_mac64.dmg"
    appcast 'https://github.com/praat/praat/releases.atom',
            checkpoint: 'e251609874e851ae122fac81ee103ca1184751fb8543bf5b83f27a991bcc300f'
  end

  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: 'praat'
end
