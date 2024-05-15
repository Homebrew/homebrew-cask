cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "109.1.0-beta001"
  sha256 arm:   "12cf47b79af2ec77b623fa94417ce1f10a1c67b94f7ad949984f9ca414b7bd06",
         intel: "91d4bb58f3197e740e86b8e5de776f45b411f4ba114e2fe9a7541a79004f03a4"

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
