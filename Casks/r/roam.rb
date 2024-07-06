cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "116.0.1-beta001"
  sha256 arm:   "27828caf194c257fae95d98ed73bbb4313e38f310f4c1af5ee1db58c776633d5",
         intel: "32bc031d698caf7e3b4e806c195092975f85276facc32145838ed72ba7d50149"

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
