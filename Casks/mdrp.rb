cask 'mdrp' do
  version '7.1.2'
  sha256 '0024a05e8afcae40aff85a0704db7d7621457425fb18d46fe391c0f05dfcfe54'

  url "http://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast 'https://www.macdvdripperpro.com/mdrp_sparkle5.xml',
          checkpoint: '362d7a4ca1848e25db2cfbca117088fa61d80238f70564cb1cfbc18c2e213d05'
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'

  depends_on macos: '>= :mountain_lion'

  app 'MDRP.app'
end
