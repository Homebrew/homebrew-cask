cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "118.0.1-beta001"
  sha256 arm:   "b436e9df84d4edd375ab671ea97640126a25abde59a8af7ba3b45eece6f6b139",
         intel: "cd99367d04855265ef559cbe60ade8a9811e95cbcf242aa1d361b2b58a842dfc"

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
