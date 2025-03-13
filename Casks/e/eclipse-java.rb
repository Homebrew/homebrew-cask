cask "eclipse-java" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.35.0,2025-03"
  sha256 arm:   "b640289a13c1edacd8b22c8545068e961e1347244653fa748d41e910858c2da8",
         intel: "6d5eac88f3f2bb6a1156b6229fe69bdf5e4989a7b95640d07bb7c9cb90cc0d51"

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
