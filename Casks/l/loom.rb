cask "loom" do
  arch arm: "-arm64"

  version "0.360.0"
  sha256 arm:   "42e61b6c126745d13b5544f3e3413e8ec0c30b8d3208b43546cd0315269bd79a",
         intel: "3d83be6efae203e4311ed916629e5058bcb7ec753f83cd554d7b5c074641a664"

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
