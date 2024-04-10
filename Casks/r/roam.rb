cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "104.1.0-beta001"
  sha256 arm:   "95d0a41935897ec76a0c506b80abfe797375f209cd119465785e31ed2d474ea0",
         intel: "2d2d2408db628a963670973ef5f6c768ee3e2036fb2cea3845cd2aedf694c40c"

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
