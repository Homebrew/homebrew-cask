cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "111.1.2-beta001"
  sha256 arm:   "c3ef370461349d1842fddfd70572081e03ae23fb6238dcc99ad12ab1ba7f736e",
         intel: "400cac50b8f285ac87312aab9a263641dba0093560b3c3406a6d47ba3a302c1c"

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
