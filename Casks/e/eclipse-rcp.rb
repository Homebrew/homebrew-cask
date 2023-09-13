cask "eclipse-rcp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.28.0,2023-09"
  sha256 arm:   "86278cb05795bb6830432293b97770c1f02a0c200c13163452089650bfb34d0f",
         intel: "0a2e0bbfa14ecd2d01252f5e722a6dbc97f317aa49c2c7514c18d4fd13a1c7bf"

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
