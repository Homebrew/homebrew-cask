cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "88.0.0-beta001"
  sha256 arm:   "81807014148697a43b1c395673c8de426689b14028d609ebbaad93e625ff6791",
         intel: "4fd069f400d8c369753ef6a160eaedb12a3252b8eb415755770f9a5f6055fb92"

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
