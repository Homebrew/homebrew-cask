cask :v1 => 'mp4tools' do
  version '3.4.5'
  sha256 'b42382c36a69078d3cdc9d4b3b98c4618efdd24ddcba55f5e3ccc5389367d532'

  url "http://www.emmgunn.com/downloads/mp4tools#{version}.zip",
      :referer => 'http://www.emmgunn.com/mp4tools-home/mp4tools-downloads/'
  name 'MP4tools'
  homepage 'http://www.emmgunn.com/mp4tools-home/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "mp4tools#{version}/MP4Tools.app"
end
