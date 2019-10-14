cask 'mdrp' do
  version '8.0.3'
  sha256 '091ed07c021c1e99b5249c3c399ceb9f7d5ef5981e92031e78fabfb7b86a9ae6'

  url "https://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast "https://www.macdvdripperpro.com/mdrp_sparkle#{version.major}.xml"
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'

  app 'MDRP.app'
end
