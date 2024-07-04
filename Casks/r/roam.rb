cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "116.0.0-beta001"
  sha256 arm:   "bb88b85d14c98310755c2f11824adfc9b12f261a07fc63926db11189980af729",
         intel: "092bcfb48baded2686af196e6bb99e00860b7500b12596bb5e540b9bd24b8246"

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
