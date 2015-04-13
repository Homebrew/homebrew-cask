cask :v1 => 'mp4tools' do
  version '3.4.4'
  sha256 'faddeb243aedf2387abff39bfd86b538053045f53596cc0650df63b110f0c087'

  url "http://www.emmgunn.com/downloads/mp4tools#{version}.zip",
      :referer => 'http://www.emmgunn.com/mp4tools/mp4toolsdownload.html'
  name 'MP4tools'
  homepage 'http://www.emmgunn.com/mp4tools/mp4toolshome.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "mp4tools#{version}/MP4Tools.app"
end
