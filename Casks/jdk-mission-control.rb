cask "jdk-mission-control" do
  version "8.0.0,13"
  sha256 "3eb380e7ae241851cebeaf636b0de063d7a4a9585265c25ce1b1bfba8d56b100"

  url "https://download.java.net/java/GA/jmc#{version.major}/#{version.after_comma}/binaries/jmc-#{version.before_comma}_osx-x64.tar.gz"
  appcast "https://jdk.java.net/jmc/8",
          must_contain: version.after_comma
  name "JDK Mission Control"
  homepage "https://jdk.java.net/jmc/8"

  app "jmc-#{version.before_comma}_osx-x64/JDK Mission Control.app"

  caveats do
    depends_on_java "11"
  end
end
