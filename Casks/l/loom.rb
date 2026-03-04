cask "loom" do
  arch arm: "-arm64"

  version "0.336.5"
  sha256 arm:   "3fa1908ab80d9dab3d8e8c6f28ae4f76116eeb3ad7873112e8bf1def1622b1e3",
         intel: "0113021a4115c651abdb84fba91bb9deb0185b504192a428f96f1a2c7b48e958"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
