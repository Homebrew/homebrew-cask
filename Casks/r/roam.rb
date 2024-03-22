cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "101.0.3-beta001"
  sha256 arm:   "8bf58db5f2bd25d483fdf7f747aba71a2c760574e021132d0561b1b41fc2ddbf",
         intel: "1ef6cb09fc8c34770dd8f854cbcfa134a1689c8c397ed2b56afb7f6be507c2b8"

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
