cask "loom" do
  arch arm: "-arm64"

  version "0.209.1"
  sha256 arm:   "c405da8fb179109f41ed09a863f7f722d05af22eedbc465902c1734bbff323d0",
         intel: "ae7b31face844474597687077a284aa1f53790f15b1d3d887a9ac5e7965079fc"

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
