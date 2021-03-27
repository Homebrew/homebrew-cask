cask "eclipse-java" do
  version "2021-03"
  sha256 "80c4c34d8d4a7fab30268e33c27a6256feb3852a9b0f9fbc6837ed626d26c6fc"

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
