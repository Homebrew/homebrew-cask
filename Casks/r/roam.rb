cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "98.0.0-beta001"
  sha256 arm:   "ad3f6b495d461bdc03ba62653d3c27aa1c4e07b4c5e39df155cc872e813a3b72",
         intel: "d2150527279e3ec0edfc6dc1ae1458193057cda2985740d2d9386aa385abace5"

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
