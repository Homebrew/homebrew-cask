cask 'segmentant' do
  version '1.1.3'
  sha256 '4f6190aa9f2c9529d5e31517459fad8745acc47cd813d974138a01b129d58717'

  url "https://www.laurenceanthony.net/software/segmentant/releases/SegmentAnt#{version.no_dots}/SegmentAnt.zip"
  appcast 'https://www.laurenceanthony.net/software/segmentant/releases/'
  name 'SegmentAnt'
  homepage 'https://www.laurenceanthony.net/software/segmentant/'

  app 'SegmentAnt.app'
end
