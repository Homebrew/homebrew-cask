cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.2"
  sha256 arm:   "a4903308504e2293b1840ff1f3cb6d7e26bd7e7602c97e998f950556ab45d90b",
         intel: "b57096a275d946d78c0ec519074c34ab9907b3ab209e9ac8a8b9bbcca16bd852"

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

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
