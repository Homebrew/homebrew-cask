cask :v1 => 'filebot' do
  version '4.6.1'
  sha256 'eed87622fe833a53fed2db816c08b5b5d68f663ef4356835e7b8f9ff3ad1d471'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/filebot/filebot/FileBot_#{version}/FileBot_#{version}-brew.tar.bz2"
  name 'FileBot'
  homepage 'http://www.filebot.net/'
  license :gpl

  app 'FileBot.app'
  binary 'FileBot.app/Contents/MacOS/filebot.sh', :target => 'filebot'
  caveats 'FileBot requires Java 8. Run "java -version" to verify.'
end
