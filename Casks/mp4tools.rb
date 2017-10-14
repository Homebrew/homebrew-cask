cask 'mp4tools' do
  version '3.6.6'
  sha256 '83cd212ffc49c7d69faeb297e28ce50b9c75ddb1d0e3e30c410162395025d49c'

  url "http://www.emmgunn.com/downloads/mp4tools#{version}.zip",
      referer: 'http://www.emmgunn.com/mp4tools-home/mp4tools-downloads/'
  name 'MP4tools'
  homepage 'http://www.emmgunn.com/mp4tools-home/'

  app "mp4tools#{version}/MP4Tools.app"
end
