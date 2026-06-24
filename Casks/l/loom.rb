cask "loom" do
  arch arm: "-arm64"

  version "0.356.1"
  sha256 arm:   "b46fa33485d96500063f52fc42c79ea7299bafe1473c8fa2ef13638f5d055e53",
         intel: "5ee6496df80e37ddd5f1c40c11cf09200acf68fdbb9a041b81e4958375340c9d"

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
