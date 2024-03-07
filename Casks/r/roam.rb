cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "99.1.0-beta001"
  sha256 arm:   "6c7d540b9bd42c0830cd454c95ca10cbdee612044be1bd3bcfdf3c87835696e4",
         intel: "994cd532d63f671841423d4c9c123456e289763b4868607444477ab91f14b3e1"

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
