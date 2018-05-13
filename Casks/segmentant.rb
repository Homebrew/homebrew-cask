cask 'segmentant' do
  version '1.1.3'
  sha256 '4f6190aa9f2c9529d5e31517459fad8745acc47cd813d974138a01b129d58717'

  url "http://www.laurenceanthony.net/software/segmentant/releases/SegmentAnt#{version.no_dots}/SegmentAnt.zip"
  appcast 'http://www.laurenceanthony.net/software/segmentant/releases/',
          checkpoint: 'e48bd20b0ae2d040485a1daa1c79f16c51494c3c3cba1b7a6829cb0ae24460a7'
  name 'SegmentAnt'
  homepage 'http://www.laurenceanthony.net/software/segmentant/'

  app 'SegmentAnt.app'
end
