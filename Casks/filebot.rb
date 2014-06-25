class Filebot < Cask
  homepage "http://www.filebot.net/"
  url "https://downloads.sourceforge.net/project/filebot/filebot/HEAD/FileBot_4.1.1/FileBot_4.1.app.tar.gz"
  sha256 "4aa3dd0532bd0266ec3bcb60553507dfb51c054a406fba95bd0c6d5c0dce7ec2"
  version "4.1.1"

  link "FileBot.app"
  binary "FileBot.app/Contents/MacOS/filebot.sh", :target => "filebot"

  caveats "FileBot requires Java 8. Run `java -version` to verify."
end
