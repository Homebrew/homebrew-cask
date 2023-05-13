cask "eclipse-java" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.27.0,2023-03"
  sha256 arm:   "f0f127c7b63f20e9d9f0844d7fdd36eae92c98f24a261879d6cf264cc92986f3",
         intel: "536a718b9a389df06aecb133559476ecd37574f0ce85112d20598d1c123e19e4"

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
