cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "90.1.0-beta001"
  sha256 arm:   "824fdb6450417a8db91548caf6d095a79017d0a09b7f7362b6765531f7a91fc9",
         intel: "e800b79b507da7ac999b33ebf8344d57270a29455f8609c59e1af5b8ec8fb8f0"

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
