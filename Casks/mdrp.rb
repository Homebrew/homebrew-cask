cask 'mdrp' do
  version '8.0.2'
  sha256 '1277c679f5a1fc8c0249a111b18b7eb7f398abcc49b3fdf654c33f31f1a809cf'

  url "https://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast "https://www.macdvdripperpro.com/mdrp_sparkle#{version.major}.xml"
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'

  app 'MDRP.app'
end
