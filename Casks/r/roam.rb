cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "101.0.0-beta001"
  sha256 arm:   "04058a9a7be90553c8633c536cee608c755319cbbef914ca936178464cbdbbdf",
         intel: "92d202703cde3515af6aab764378664cef6050309e8977f944c8dc36f53eacc8"

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
