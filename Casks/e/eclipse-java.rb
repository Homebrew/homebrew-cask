cask "eclipse-java" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.33.0,2024-09"
  sha256 arm:   "8fb905dd622ec5b2a312dbe4be20b14e3047fce00dcad8e28b405207673f3292",
         intel: "a2f3ec39eca8ceb8cd425fef276ed8978283e1320fb8caf86a05f61d0640259f"
  
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
