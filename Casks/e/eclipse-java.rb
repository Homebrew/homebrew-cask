cask "eclipse-java" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.29.0,2023-09"
  sha256 arm:   "4462ede59651f0af4111c4e61f0d83b4b0c9e50a31baf9108525db92fe0a8c8b",
         intel: "cbcea2a755e12ab80a58cd71b4418e53a5765022423a6730ad3b31541ddee4be"

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
