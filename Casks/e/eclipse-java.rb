cask "eclipse-java" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.38,2025-12"
  sha256 arm:   "470e75a8adb05a1a63c02d98267933e4300fd3b644da821b8c1de1d42d866486",
         intel: "898061079fcefa049e96109e73a7359e339921bb2a913d23956762765f4b5ced"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-java-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for Java Developers"
  desc "Eclipse IDE for Java developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  depends_on macos: ">= :big_sur"

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Java.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/epp.package.java.plist",
    "~/Library/Saved Application State/epp.package.java.savedState",
  ]
end
