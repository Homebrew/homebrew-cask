cask "loom" do
  arch arm: "-arm64"

  version "0.194.3"
  sha256 arm:   "fc3544b291e8bf742c2be8dd24f6cb1c0207b21f46305ceffd2c11856397f7f6",
         intel: "1a555dd32ea2c0aa97e4e684471f362912a891c5973f92b05624814a9c0bcac0"

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
