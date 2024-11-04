cask "loom" do
  arch arm: "-arm64"

  version "0.261.1"
  sha256 arm:   "3ac1bde33da86afb4598e88a162871c42958a5fee655db0cd3d60368b03938d3",
         intel: "5df7a6cb9985a72828909bed38a547866e71cc2c1546ef7bd2823c3012c1d8c5"

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
