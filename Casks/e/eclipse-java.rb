cask "eclipse-java" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.30.0,2023-12"
  sha256 arm:   "e31dedbdbf1ff9e361787f4c7c3c2428a63bc9b46cf8ca96c2ad69155160f62d",
         intel: "568e7c7bd30358b77aa7ea9e77fe3a7fc1506b8493a799339a2bec9cbb4ce1e3"

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
