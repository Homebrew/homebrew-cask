class Filebot < Cask
  version '4.5'
  sha256 '389e663588f241c1aa97a2797f54d4e52e7c4fe47d394cd70cb5b2c7395a6761'

  homepage 'http://www.filebot.net/'
  license :oss
  url "https://downloads.sourceforge.net/project/filebot/filebot/FileBot_#{version}/FileBot_#{version}.app.tar.gz"

  app 'FileBot.app'
  binary 'FileBot.app/Contents/MacOS/filebot.sh', :target => 'filebot'
  caveats 'FileBot requires Java 8. Run "java -version" to verify.'
end
