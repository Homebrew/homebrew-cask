cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "93.0.1-beta001"
  sha256 arm:   "02ed6a09dcd509089382621ec0b9cf284763f02ceb3d36bdebc7447d3a84bc91",
         intel: "3aec94ce0f670152767a09b0ab6ddd48529383bd56c491d9f0e136694ccc720a"

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
