cask 'mdrp' do
  version '6.1.3'
  sha256 '710f9a4693013b6fd8b8badcde4695819e9b827e689c13826acf099f4f73dfe0'

  url "http://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast 'https://www.macdvdripperpro.com/mdrp_sparkle5.xml',
          checkpoint: '65784608e9c18bf77c66434d53200f7af4b51f78a5638f3471eecee1c44de74c'
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'

  app 'MDRP.app'
end
