cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "117.0.0-beta001"
  sha256 arm:   "be49aea6b7a8288a73da449861892d2a442b90858a583816eecd276a3762fc61",
         intel: "0ed72a6c7dc6b943c4b67654b389fcffad5dc7b97cc96da2ab9bb63828876323"

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
