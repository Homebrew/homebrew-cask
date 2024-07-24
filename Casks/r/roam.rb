cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "119.0.0-beta001"
  sha256 arm:   "ef7efd3eec33a6032635ac2cdca009c0c150beb8babfc0aa449b98fe6c2109f1",
         intel: "139d579d166b08aabdf79543fde02302f1d1a1ac5265a50cafe733b7215636d8"

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
