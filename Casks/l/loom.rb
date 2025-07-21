cask "loom" do
  arch arm: "-arm64"

  version "0.303.1"
  sha256 arm:   "cbb48127acac78fdf35f2a9e351b1204cc5ca2457432492362c0f50e93c1d222",
         intel: "7543cbdee8c91b20b3842f8d494bfe9a8a1604129bed9575f35213bc63d922c9"

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
