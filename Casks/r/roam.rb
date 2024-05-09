cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "108.0.0-beta001"
  sha256 arm:   "4a6eb0db1d949129b954833d3a62bdbde150a2c55f5e83deb9ff14f25bd50d1a",
         intel: "905e20ca595718503959b10181bdf81b729578484cb8b85249d5ad2803077565"

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
