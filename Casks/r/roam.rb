cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "107.1.0-beta001"
  sha256 arm:   "0e4fadf6c6681fa569aa85fd7a78362d5faf2ee99e47794bddb5db17aee8a8fe",
         intel: "12b39b97bf8d69bb3a3ad1d35259486ee7c2cfae0626457bc11a926774bc5e2f"

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
