cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "96.0.0-beta001"
  sha256 arm:   "530c57bb347b3c13bc0c41610e0e67de1167ff932f19128c1df2b23b1f129e9a",
         intel: "57ab0f60c751b04bcdb4ab5c182ce1f394840932238658de8ba32cee914e9468"

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
