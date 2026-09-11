cask "eclipse-java" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.41,2026-09"
  sha256 arm:   "417e86d866f053d0590a55213e440bf50233a77ed2a9a40680eff37a0b883e50",
         intel: "35e58dee775990a44f8927e0d381bd5c03a8150a2cffc96f9a7f67688414435c"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-java-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for Java Developers"
  desc "Eclipse IDE for Java developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  depends_on :macos

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Java.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/epp.package.java.plist",
    "~/Library/Saved Application State/epp.package.java.savedState",
  ]
end
