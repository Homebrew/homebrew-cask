cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "97.0.0-beta001"
  sha256 arm:   "ea16ab58e4a7c582f8c3d17f27dfaba16fe83b5b3b3ce76e1f22663a8f027823",
         intel: "e1f034675e6faa09e85f29e817641d17776fad067ab18312879cbca7733edb31"

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
