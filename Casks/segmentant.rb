cask 'segmentant' do
  version '1.1.1'
  sha256 '2c621ad463b677afa58e4b9a5b265924b7923ed3cc0ea1c93c72eb0cffd1f167'

  url "http://www.laurenceanthony.net/software/segmentant/releases/SegmentAnt#{version.no_dots}/SegmentAnt.zip"
  appcast 'http://www.laurenceanthony.net/software/segmentant/releases/',
          checkpoint: '001e89baf3649a1a88b78dedf28c465f26c5ce4e3a77e5643c09348753949342'
  name 'SegmentAnt'
  homepage 'http://www.laurenceanthony.net/software/segmentant/'

  app 'SegmentAnt.app'
end
