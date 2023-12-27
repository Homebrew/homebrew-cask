cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "89.0.0-beta001"
  sha256 arm:   "a10ec1984cde08ea7b66ab8cec0705470f4ccba0bdbec1a9af6b6e4300224c89",
         intel: "02e64ea5dbe4abb0c8c058578ee3d5b0ef16c2b7975f3eec052685fcde4c2f1e"

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
