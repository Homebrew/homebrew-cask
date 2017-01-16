cask 'segmentant' do
  version '1.1.1'
  sha256 '2c621ad463b677afa58e4b9a5b265924b7923ed3cc0ea1c93c72eb0cffd1f167'

  url "http://www.laurenceanthony.net/software/segmentant/releases/SegmentAnt#{version.no_dots}/SegmentAnt.zip"
  name 'SegmentAnt'
  homepage 'http://www.laurenceanthony.net/software/segmentant/'

  app 'SegmentAnt.app'
end
