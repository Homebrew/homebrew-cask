cask "loom" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.134.0"

  if Hardware::CPU.intel?
    sha256 "36c1b3532800799f000cc5bb8eddadcc7fb44d40ae060bb6df54fd521846939a"
  else
    sha256 "44687ff19f4253f2dc98682f313fec8917c9c9e44077764a260f11c5b8952143"
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
