cask 'mdrp' do
  version '8.0.5'
  sha256 'bb76a063f54f06523e17b03ec53f0886d82800dc8fc186e059f489d4285e8960'

  url "https://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast "https://www.macdvdripperpro.com/mdrp_sparkle#{version.major}.xml"
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'

  app 'MDRP.app'
end
