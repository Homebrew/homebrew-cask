cask 'mdrp' do
  version '7.0.0'
  sha256 '3b7caa984db9b9bd4400c25fa8c4216374106983cc47936030de949ad7923433'

  url "http://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast 'https://www.macdvdripperpro.com/mdrp_sparkle5.xml',
          checkpoint: '65784608e9c18bf77c66434d53200f7af4b51f78a5638f3471eecee1c44de74c'
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'

  app 'MDRP.app'
end
