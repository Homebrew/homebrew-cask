cask 'mdrp' do
  version '8.0.1'
  sha256 '154d15a47fa8bd63c73565ab325434355265e18e71a662d83cbe74b9292783d2'

  url "https://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast "https://www.macdvdripperpro.com/mdrp_sparkle#{version.major}.xml"
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'

  app 'MDRP.app'
end
