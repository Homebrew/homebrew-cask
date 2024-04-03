cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "103.0.0-beta001"
  sha256 arm:   "daaf1731ef22c6f442f5bfbe5e94bfb143b57edab910bd2dfdcdc963f2950c1b",
         intel: "c457c3e8db5d296797c2e1c8e8dad35d100904a8c1cd6a30f88d69e43e406707"

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
