cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "100.1.0-beta001"
  sha256 arm:   "8be50fd12926b49d1c4d21e8dbaa63b8f7da4ee0d8aa7ecd634a46c4335994a2",
         intel: "02588f9006c0c4e4620d3147cad5c3f1cb00fdcea8ec67510b3f16fc9b8966e8"

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
