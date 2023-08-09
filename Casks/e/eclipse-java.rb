cask "eclipse-java" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.28.0,2023-06"
  sha256 arm:   "3d67e20a135aa52e1c6d24abd9af66a2a8f9d9b58c4d8b9a354c98c04502ccfb",
         intel: "07df02358304ef0c8241a86e4f514836d3c71f0b1db3dec4c5a2c7564ef5bfd6"

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
