cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "118.0.0-beta001"
  sha256 arm:   "4793e78386814798c01c8be4e61fcb6bd7e4432adb450e8ef38cf5a0e387dd64",
         intel: "7349a46f4167e72b19af9fc3980361a562cd6cd31c6805f6e05680b909065b7d"

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
