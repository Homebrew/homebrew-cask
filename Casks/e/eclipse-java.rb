cask "eclipse-java" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.31.0,2024-06"
  sha256 arm:   "9c67d238fe77529f823bdaf12e0a13b7c1e78544535d4b8ff88cad65ffec8219",
         intel: "8c3e3b642ea6f86258fe9a9b24d7538ef2e8fd94561d036748f43420f97127f2"

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
