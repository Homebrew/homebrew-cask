cask 'mp4tools' do
  version '3.6.4'
  sha256 'fa312aa61bb62056bda122111148a65a60f5f592773518003286a8c54be62003'

  url "http://www.emmgunn.com/downloads/mp4tools#{version}.zip",
      referer: 'http://www.emmgunn.com/mp4tools-home/mp4tools-downloads/'
  name 'MP4tools'
  homepage 'http://www.emmgunn.com/mp4tools-home/'

  app "mp4tools#{version}/MP4Tools.app"
end
