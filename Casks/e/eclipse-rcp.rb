cask "eclipse-rcp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.35.0,2025-03"
  sha256 arm:   "cca99e8aa25c2ca0002f5181972471fd0c47b2cc2a2cb16e2d2ee97b458e7376",
         intel: "a3fa28e6a0d807d97a04cdd5bf34a45b538034d8d1ed53d26eaf8f460c06fc92"

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
