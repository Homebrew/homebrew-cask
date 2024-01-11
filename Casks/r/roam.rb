cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "91.1.0-beta001"
  sha256 arm:   "d9c390b857fa4ebcd4193319a80faabd878b64d8efbaa58054d9887d733099cf",
         intel: "7990e46a54eca28d68a99e8bcc3b2000eb90512f282b8ea40bd89dcecae497bf"

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
