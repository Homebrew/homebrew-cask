cask 'mp4tools' do
  version '3.5.3'
  sha256 '06c64b6c79a15bd98a57be2614848e6b122f5d11ed9b4fe41497462e76f431db'

  url "http://www.emmgunn.com/downloads/mp4tools#{version}.zip",
      referer: 'http://www.emmgunn.com/mp4tools-home/mp4tools-downloads/'
  name 'MP4tools'
  homepage 'http://www.emmgunn.com/mp4tools-home/'

  app "mp4tools#{version}/MP4Tools.app"
end
