cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "113.0.1-beta001"
  sha256 arm:   "3cedec3dd32a3f21123d4b26ecc9b850902361737ae6353e1db851532cd957ce",
         intel: "d5e02b5708f3493f2294edf205b0bc31e64143ad0a61ef9089a90cedc88937d6"

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
