cask "eclipse-rcp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.38,2025-12"
  sha256 arm:   "35cf161e13086ad018f5aea8680801e6f1bb269eca41d95888ad5bae08989758",
         intel: "60f3b36b8f531f69c40d515f0eaff18c8806ea2f0cb8b7bbe4fd9c858c046e68"

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
