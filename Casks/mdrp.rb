cask 'mdrp' do
  version '7.2.0'
  sha256 '6e30f8969a61bcba4e1ee973f3bb2be6758780582e7f43302c6d2eb818d04a50'

  url "http://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast 'https://www.macdvdripperpro.com/mdrp_sparkle5.xml'
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'

  depends_on macos: '>= :mountain_lion'

  app 'MDRP.app'
end
