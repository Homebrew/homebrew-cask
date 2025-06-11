cask "eclipse-dsl" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.36.0,2025-06"
  sha256 arm:   "367b187be7a951421697012de7de9cfe515eebda727fed744842a77f60ab938a",
         intel: "d07f56191a70c8f599fd3baac9750bb7a9c19f977696871a6fff5acdf5e8136c"

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
