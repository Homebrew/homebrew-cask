cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "91.0.0-beta001"
  sha256 arm:   "894d56757e579718943638313dbefe16527712d234056cef8b37f6d68dbfb414",
         intel: "93ec0e193f5c0a410cc8942b175c37532b5a31f5c634cf102685cd696d4f2e99"

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
