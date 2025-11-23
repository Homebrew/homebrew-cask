cask "eclipse-rcp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.37.0,2025-09"
  sha256 arm:   "34699dc2aa06b2e2ad5b8594e0655e59774fe0736565fef8b59046d934039fc8",
         intel: "cb65aa5f1c852bb66a734d455f4979b8047562e01f9f986cd14e239751e1ad90"

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
