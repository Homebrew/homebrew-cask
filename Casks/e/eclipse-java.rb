cask "eclipse-java" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.37.0,2025-09"
  sha256 arm:   "3e99fd5718887a5ea5c26003d14207331027b8dda284db02a5e5fd8e7bb88b9e",
         intel: "c58d7dd1a1f8f71a9eae46e5e506a90d3edb8496ce700d2fc30ac20995f5e255"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-java-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for Java Developers"
  desc "Eclipse IDE for Java developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Java.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/epp.package.java.plist",
    "~/Library/Saved Application State/epp.package.java.savedState",
  ]
end
