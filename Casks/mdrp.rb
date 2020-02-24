cask 'mdrp' do
  version '8.0.4'
  sha256 'bb4891f44d49a8e9ba4bf313e809422b3168a7055299b0ef5b27c30388573159'

  url "https://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast "https://www.macdvdripperpro.com/mdrp_sparkle#{version.major}.xml"
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'

  app 'MDRP.app'
end
