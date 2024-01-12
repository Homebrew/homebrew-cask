cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "91.2.0-beta001"
  sha256 arm:   "3ac282251de2660e9322cab1fb2b669a28209768c32cbb277590c0b5bf90384c",
         intel: "e55cccbe8799dc73923fa100a62e1fe6000ac116935e3cdf9555d28f150b23c8"

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
