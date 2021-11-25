cask "eclipse-java" do
  version "4.21.0,2021-09"
  sha256 "5fb0137aff46c6d8b36615670aa86dcfc4b653b19fd1bd0d1bbeae8f1c1cf9ce"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-java-#{version.csv.second}-R-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse IDE for Java Developers"
  desc "Eclipse IDE for Java developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Java.app"
end
