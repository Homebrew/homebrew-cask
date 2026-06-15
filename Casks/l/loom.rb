cask "loom" do
  arch arm: "-arm64"

  version "0.354.0"
  sha256 arm:   "c23fca0fd19c3ac6815ce17fbde453f640c972f7d4feb5296206af12ebfe251d",
         intel: "429867f628623822e6d8d8be5febc24bb9ae35ab47e1ae2cb58edd90141e2579"

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
