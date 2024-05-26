cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "110.1.2-beta001"
  sha256 arm:   "360c677536b5d1120e5af8f7bc8b5ea6192f9394a1c1de0b30e38afe4986a245",
         intel: "904b834eb51ac9064873089e25e2d3d54e331e9bb733b1ecca6ddaca237a9ce7"

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
