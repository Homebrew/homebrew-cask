cask "eclipse-rcp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.31.0,2024-03"
  sha256 arm:   "8c39450bf3d5e49fe7e89e0ddaa8ad99d4248c58a911bee7628007254c511e52",
         intel: "13483284fb5d69f420144b797bea9703880a13840d9a1ba0554238cdeca91223"

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
