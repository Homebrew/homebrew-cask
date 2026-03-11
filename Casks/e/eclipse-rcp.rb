cask "eclipse-rcp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.39,2026-03"
  sha256 arm:   "48f6f94a30a1f658385baae054478ad5dad0be95e0cde37a060047419569a11e",
         intel: "10d1daced2719bcb40ced889d29110e85b9175095c0a28fbaf134317f6c37de7"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-rcp-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse for RCP and RAP Developers"
  desc "Eclipse IDE for RCP and RAP developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  depends_on macos: ">= :big_sur"

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse RCP.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/epp.package.rcp.plist",
  ]
end
