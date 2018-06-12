cask 'mdrp' do
  version '7.1.2'
  sha256 '0024a05e8afcae40aff85a0704db7d7621457425fb18d46fe391c0f05dfcfe54'

  url "http://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast 'https://www.macdvdripperpro.com/mdrp_sparkle5.xml'
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'

  depends_on macos: '>= :mountain_lion'

  app 'MDRP.app'
end
