cask 'mdrp' do
  version '9.0.0'
  sha256 'debc70f30e7e182b73de1612e72e91096a50852d5050947a15671e0e8234f2a2'

  url "https://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast "https://www.macdvdripperpro.com/mdrp_sparkle#{version.major}.xml"
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'

  app 'MDRP.app'
end
