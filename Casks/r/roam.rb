cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "103.0.1-beta001"
  sha256 arm:   "c9759de19163b09cc5fa54a4b036bee9421ca0c91ca45475bfd93b8685a10425",
         intel: "a70bbf976d7d20032a229514447880d2941bcdb72d75930d674f9292fbeda283"

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
