cask "loom" do
  arch arm: "-arm64"

  version "0.315.6"
  sha256 arm:   "b905897113faa01083c29b38f83b9cc4d9c88f2bdb0e695db07328dea86dcec2",
         intel: "ade7d7b962bcc89628856c0ba9f95b7b02c16bd38a221689bea022ebe5be620c"

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
