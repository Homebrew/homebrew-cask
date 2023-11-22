cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.6.11"
  sha256 arm:   "3a4d624d857012cea3b350b93ca1fc9eb6de3b7978079a32e5dd7519b086395b",
         intel: "9711b5e856be4a35299fee6a9f6034fe8779280fa9cef515eea9d3211c27cfb4"

  url "https://github.com/streetwriters/notesnook/releases/download/v#{version}/notesnook_mac_#{arch}.dmg",
      verified: "github.com/streetwriters/notesnook/"
  name "Notesnook"
  desc "Privacy-focused note taking app"
  homepage "https://notesnook.com/"

  livecheck do
    url "https://notesnook.com/releases/darwin/latest-mac.yml"
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
