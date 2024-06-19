cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "114.0.0-beta001"
  sha256 arm:   "1bcef72819d26202ef3af6403a48fc0ac0224dce29b29237205c05e78322ec54",
         intel: "83b14d5f97b99aa97ebedf808f53bc8009adf4200332ee9672a390f6ebbb0a4f"

  url "https://download.ro.am/Roam/8a86d88cfc9da3551063102e9a4e2a83/latest/darwin/#{arch}/Roam.dmg"
  name "Roam"
  desc "Virtual office"
  homepage "https://ro.am/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Roam.app"

  uninstall quit: "inc.wonder.roam"

  zap trash: [
    "~/Library/Caches/inc.wonder.roam",
    "~/Library/Caches/inc.wonder.roam.ShipIt",
    "~/Library/Preferences/inc.wonder.roam.plist",
    "~/Library/Saved Application State/inc.wonder.roam.savedState",
  ]
end
