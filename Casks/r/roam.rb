cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "99.0.2-beta001"
  sha256 arm:   "884a05e4032b4cbf71a70f596afe723c9d8b5e09b0959db0140711c93786a7a3",
         intel: "3bb84649bb51487df8c6611bbda45031a5ba9a19989d6507d17ffe5050470d64"

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
