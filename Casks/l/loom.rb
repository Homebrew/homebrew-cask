cask "loom" do
  arch arm: "-arm64"

  version "0.361.0"
  sha256 arm:   "7c580d8c2c7e5e2f64da0eec5f8e1994df9068710a4a2e3e0e3877a5abe367f6",
         intel: "e4d48db2ae16b0d33f56bc30a4a2a3010af1f2fb917dcb094b123d2cc617fcae"

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
