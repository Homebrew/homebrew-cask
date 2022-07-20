cask "loom" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.137.0"

  if Hardware::CPU.intel?
    sha256 "32d3472f8d053af98b22d1e26866f1d131d4757610b64f4525eadb060d05777c"
  else
    sha256 "d8b79835c62ce27c2a9c6d7c6424a601be18e7b03fe45a145eca0d57572e9674"
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
