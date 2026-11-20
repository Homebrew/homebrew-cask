cask "eclipse-rcp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.41,2026-09"
  sha256 arm:   "315629605f2316d9227ea7e4ee5a45962dccfe8817e94ffbfc77e104ed2f5a3a",
         intel: "0be30fee8d1e3094b94255cf0bb6b96cb45a7308ae61ba530366b88f9ec76e04"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-rcp-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse for RCP and RAP Developers"
  desc "Eclipse IDE for RCP and RAP developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  depends_on :macos

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse RCP.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/epp.package.rcp.plist",
  ]
end
