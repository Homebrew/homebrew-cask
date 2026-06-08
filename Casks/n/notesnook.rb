cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.22"
  sha256 arm:   "78c7bfcc2d0895fc5be23d6d13f9818b7c3de3db1ce5161ea6c8ce9bc192212d",
         intel: "3e542c5baa662dcea28f2f6842791ba21fa71b780ca2086a9c00ef345d1626f1"

  url "https://github.com/streetwriters/notesnook/releases/download/v#{version}/notesnook_mac_#{arch}.dmg",
      verified: "github.com/streetwriters/notesnook/"
  name "Notesnook"
  desc "Privacy-focused note taking app"
  homepage "https://notesnook.com/"

  livecheck do
    url "https://notesnook.com/api/v1/releases/darwin/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
