cask 'mp4tools' do
  version '3.6.7'
  sha256 'f1da3e5955a8b2ab506e2c76355c5f635796adeb63c7741476fbbbc3f8aa9376'

  url "http://www.emmgunn.com/downloads/mp4tools#{version}.zip",
      referer: 'http://www.emmgunn.com/mp4tools-home/mp4tools-downloads/'
  name 'MP4tools'
  homepage 'http://www.emmgunn.com/mp4tools-home/'

  app "mp4tools#{version}/MP4Tools.app"
end
