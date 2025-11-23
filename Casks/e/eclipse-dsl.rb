cask "eclipse-dsl" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.37.0,2025-09"
  sha256 arm:   "7d1d966f269f4a4348c4922ab8624cf07afe4e4d7c1b9e8bc5e15920751c6da6",
         intel: "037e662ad937fed40ce68b0f487e8b31b63e426548c2a3ff2058fc1943d41a37"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-dsl-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for Java and DSL Developers"
  desc "Eclipse IDE for Java and DSL developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse DSL.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/epp.package.dsl.plist",
  ]
end
