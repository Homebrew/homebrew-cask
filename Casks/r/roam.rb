cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "121.0.0-beta001"
  sha256 arm:   "09dac900e0ef035d92551902552bac83845b69185f2a78d3ca657779052530c0",
         intel: "4733d24b55d394a5de14db7d15d0c2c57f8a2c6d09ff1f9cf7c453b11328b762"

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
