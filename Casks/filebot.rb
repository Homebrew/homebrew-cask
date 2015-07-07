cask :v1 => 'filebot' do
  version '4.6'
  sha256 '018879d539a177dcd00507b21424749343056f5e8dfce763083fae4cfc91ff33'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/filebot/filebot/FileBot_#{version}/FileBot_#{version}-brew.tar.bz2"
  name 'FileBot'
  homepage 'https://www.filebot.net/'
  license :gpl

  app 'FileBot.app'
  binary 'FileBot.app/Contents/MacOS/filebot.sh', :target => 'filebot'
  caveats 'FileBot requires Java 8. Run "java -version" to verify.'
end
