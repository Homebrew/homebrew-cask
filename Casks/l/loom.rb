cask "loom" do
  arch arm: "-arm64"

  version "0.352.4"
  sha256 arm:   "23474358c65b1ca9176b68d115c22820ad29ae055aa32e443bf145ed719bad3f",
         intel: "20ef08ef8e936c8551d0b9d175ffc530faee1e841b86e2316cf67927caaea110"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
