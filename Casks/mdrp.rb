cask 'mdrp' do
  version '6.0.2'
  sha256 'da63b71ef31ba9d705e6a65e3edb3cd5108dfbeb9abc8f8322c6078e4d30c9ce'

  url "http://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast 'https://www.macdvdripperpro.com/mdrp_sparkle5.xml',
          checkpoint: '011bc89c3f06f1dfdcfdaff97822eac93434f1cb4188391aa5b0abd7eb0c6e83'
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'
  license :commercial

  app 'MDRP.app'
end
