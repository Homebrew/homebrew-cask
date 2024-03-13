cask "eclipse-java" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.31.0,2024-03"
  sha256 arm:   "06f82a33d07d8ae93e5a055e2b2a6b56f0db5e5ca51c2c5dd53a4739d4d1475e",
         intel: "c38b97c63a30a32ab258ef5029869c37945ca3a47e4566085c878337af198d93"

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
