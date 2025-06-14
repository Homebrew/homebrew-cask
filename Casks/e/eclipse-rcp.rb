cask "eclipse-rcp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.36.0,2025-06"
  sha256 arm:   "3dead58db91d59fba038b83fda6c32d056902ac0e1e73f72171fd9e2cc8b07b7",
         intel: "adf25546e13c90382960413321182d208233a10d3433f9a2bac7b5bf5f8bbcd9"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-rcp-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse for RCP and RAP Developers"
  desc "Eclipse IDE for RCP and RAP developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse RCP.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/epp.package.rcp.plist",
  ]
end
