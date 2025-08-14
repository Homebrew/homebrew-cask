cask "loom" do
  arch arm: "-arm64"

  version "0.310.0"
  sha256 arm:   "f56f5c8b2db0f06b4165dab04ac5963de300697873b57408a735c6c473b1cebf",
         intel: "ecfaefcd53d83cb609b44e12a940fd5e81f98a3633fa4a7a6c57b329f8c2d4ab"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
