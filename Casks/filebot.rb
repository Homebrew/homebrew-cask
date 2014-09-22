class Filebot < Cask
  version '4.2'
  sha256 '92769237a926e13de515c6743d57c0b8b52e4c6ed50dfc5b46355690de1feb95'

  homepage 'http://www.filebot.net/'
  url "https://downloads.sourceforge.net/project/filebot/filebot/FileBot_#{version}/FileBot_#{version}.app.tar.gz"

  app 'FileBot.app'
  binary 'FileBot.app/Contents/MacOS/filebot.sh', :target => 'filebot'
  caveats 'FileBot requires Java 8. Run `java -version` to verify.'
end
