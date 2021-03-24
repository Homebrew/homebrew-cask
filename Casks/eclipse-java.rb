cask "eclipse-java" do
  version "2021-03"
  sha256 "834dc1173718adaddc8129369711ade0ffa1b03af8423786f8ded18b0ddcc856"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version}/R/eclipse-java-#{version}-R-macosx-cocoa-x86_64.dmg"
  name "Eclipse IDE for Java Developers"
  homepage "https://eclipse.org/"

  livecheck do
    url "https://www.eclipse.org/downloads/packages/"
    regex(%r{href=.*?/eclipse-java-(\d{4}-\d{2})-R-macosx-cocoa-x86_64\.dmg}i)
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Java.app"
end
