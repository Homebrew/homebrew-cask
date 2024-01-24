cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "93.0.0-beta001"
  sha256 arm:   "7e1c2bbfaf5e245b243d5fb8a78e83cb3723b78758a851df13e6e63ae9c11082",
         intel: "afebb5a35ce851d068218e8829070a79037f0ba0a2820242fad9fa3f164cfdd9"

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
