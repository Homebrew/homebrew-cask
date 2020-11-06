cask "jdk-mission-control" do
  version "7.1.2,04"
  sha256 "ca58d200ee8a350fcc3f5c8ffe7b9b51dd8a9372de106a0ebff11f748647f986"

  url "https://download.java.net/java/GA/jmc#{version.major}/#{version.after_comma}/binaries/jmc-#{version.before_comma}_osx-x64.tar.gz"
  appcast "https://jdk.java.net/jmc/",
          must_contain: version.after_comma
  name "JDK Mission Control"
  homepage "https://jdk.java.net/jmc/"

  app "jmc-#{version.before_comma}_osx-x64/JDK Mission Control.app"

  caveats do
    depends_on_java "11"
  end
end
