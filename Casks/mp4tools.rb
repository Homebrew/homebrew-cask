class Mp4tools < Cask
  version '3.4.3'
  sha256 'f57adc460f9a6e14ccf807b07cfe1eec0b07689e88e70139a625ab3002fb4289'

  url "http://www.emmgunn.com/downloads/mp4tools#{version}.zip",
      :referer => 'http://www.emmgunn.com/mp4tools/mp4toolsdownload.html'
  homepage 'http://www.emmgunn.com/mp4tools/mp4toolshome.html'

  link "mp4tools#{version}/MP4Tools.app"
end
