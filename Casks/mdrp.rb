cask 'mdrp' do
  version '7.2.1'
  sha256 '007617a6222abd2c72db3661cb381c2bd9fe8f19d41e1f29e71bc3c9a1250390'

  url "https://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast 'https://www.macdvdripperpro.com/mdrp_sparkle5.xml'
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'

  depends_on macos: '>= :mountain_lion'

  app 'MDRP.app'
end
