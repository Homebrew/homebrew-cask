cask "eclipse-rcp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.28.0,2023-06"
  sha256 arm:   "a55f238145d64f94f20bcbc01655ba7de3f05499f942d49615ac0fec07342972",
         intel: "6fed38d8ff4ea14875063034eb86d20397519f2012e9f0f729162ee25ed299c8"

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
