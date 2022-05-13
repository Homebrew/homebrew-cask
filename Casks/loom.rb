cask "loom" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.128.0"

  if Hardware::CPU.intel?
    sha256 "07a8f2e12f8fb01691f5c2f15538572464213fd21d5b9f1ca6a0bd6d25729d1a"
  else
    sha256 "61d07ed7cf9810035d3c7ce4228df132184da74af37bed3b6ffe0310e2e73209"
  end

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
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
