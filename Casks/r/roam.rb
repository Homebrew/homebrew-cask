cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "115.0.0-beta001"
  sha256 arm:   "3ad37a459f23a7dddf817f7c8dc0548b35a40b7aff9cdd3bcdc3fd65d19c3e97",
         intel: "b2c00ab39c45584e05144564d33c2dc5de7b569732ec27b944dd93e4e56f6279"

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
