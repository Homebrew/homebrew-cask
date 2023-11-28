cask "loom" do
  arch arm: "-arm64"

  version "0.189.1"
  sha256 arm:   "4fb380917840a718da8a1a7c2be3d6a60166a8a6cf8716fbd6a0d8284602a8b6",
         intel: "dc3ea93ee7cdaf22f3cf921c27f5863b762c343b708a628171cfeb05efe080d2"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
