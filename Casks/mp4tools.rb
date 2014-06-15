class Mp4tools < Cask
  version '3.4.2'
  sha256 'dbaf78d8889e272da249b898900e7cb432a082059d3f041ba3d6f8834221f72a'

  url "http://www.emmgunn.com/downloads/mp4tools#{version}.zip",
      :referer => 'http://www.emmgunn.com/mp4tools/mp4toolsdownload.html'
  homepage 'http://www.emmgunn.com/mp4tools/mp4toolshome.html'

  link "mp4tools#{version}/MP4Tools.app"
end
