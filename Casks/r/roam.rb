cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "105.0.0-beta001"
  sha256 arm:   "bbf67eee2e3540092a7316ab984b67ba1dc1aa36cbf926d7588ddb2798b8cc17",
         intel: "1b64d1b42057c464d1a104643a327499acbf060ebdba6f030f1e56a85d4c52ed"

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
