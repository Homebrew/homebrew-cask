cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "100.1.1-beta001"
  sha256 arm:   "5098e9c03bd1d48e006d496d1ccc4e72e4e06f3058b56dca3200cc77d0897ad9",
         intel: "76e95f8b7ea97f2b0b017e9ea34e1731f28bbbf0eb30d7b03ffaaa795ca0f2d4"

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
