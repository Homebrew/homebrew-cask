cask 'segmentant' do
  version '1.0.0'
  sha256 '547a31a50389a342a6e22c4dea3828dfb3ef4d01dffbfb83fb75483b514c16d4'

  url "http://www.laurenceanthony.net/software/segmentant/releases/SegmentAnt#{version.no_dots}/SegmentAnt.zip"
  name 'SegmentAnt'
  homepage 'http://www.laurenceanthony.net/software/segmentant'

  app 'SegmentAnt.app'
end
