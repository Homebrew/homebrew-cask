cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "99.0.1-beta001"
  sha256 arm:   "43b68f623b85849816260cc0e75c58ac0c1efe3da1d1eede7099256c759b069b",
         intel: "a7ee3c8ed75a957d759479be3892ae8a3d99d4e66c3c4efc01d11654e9d9f9c2"

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
