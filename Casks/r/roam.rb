cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "112.0.0-beta001"
  sha256 arm:   "4e97ce58f63354083049dc3c438d4bdd254e97994e3bfffbc420444f40dd6503",
         intel: "0f23e056ab3b8ddd3b57c02aa78ccbd0b8805be6b43882920033a816c920a5b6"

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
