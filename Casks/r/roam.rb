cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "102.2.1-beta001"
  sha256 arm:   "6e83755fe753c362ddb6f0c8c29de7e5be30f5e2432832515cf9467e3019405d",
         intel: "0760cf84e067c5e37bc73a6eb70ca21ff7606b265b8b718902bd049519177107"

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
