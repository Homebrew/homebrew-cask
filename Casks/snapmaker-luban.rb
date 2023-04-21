cask "snapmaker-luban" do
  arch arm: "-arm64", intel: "-x64"

  version "4.7.3"
  sha256 arm:   "aac05c6d56d6e6fe8db20b7283e1affe04859b8499e0d5343e0ddbed36be819d",
         intel: "9c5fa0e29f7140c5e9e75405f6f15e22922030db6bc30a2d09102a391565a156"

  url "https://github.com/snapmaker/luban/releases/download/v#{version}/Snapmaker-Luban-#{version}-mac#{arch}.dmg",
      verified: "github.com/snapmaker/luban/"
  name "Snapmaker Luban"
  desc "3D printing software"
  homepage "https://snapmaker.com/snapmaker-luban"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Snapmaker Luban.app"

  zap trash: [
    "~/Library/Caches/com.snapmaker.luban",
    "~/Library/Caches/com.snapmaker.luban.ShipIt",
    "~/Library/Preferences/ByHost/com.snapmaker.luban.ShipIt.*.plist",
    "~/Library/Preferences/com.snapmaker.luban.helper.plist",
    "~/Library/Preferences/com.snapmaker.luban.plist",
    "~/Library/Saved Application State/com.snapmaker.luban.savedState",
  ]
end
