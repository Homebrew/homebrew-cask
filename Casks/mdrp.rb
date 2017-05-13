cask 'mdrp' do
  version '7.0.0'
  sha256 '3b7caa984db9b9bd4400c25fa8c4216374106983cc47936030de949ad7923433'

  url "http://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast 'https://www.macdvdripperpro.com/mdrp_sparkle5.xml',
          checkpoint: '4906a84404edb4abe16c8315854b5cd0d667125bb28a5d3182372ec2312523e1'
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'

  app 'MDRP.app'
end
