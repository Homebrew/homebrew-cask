cask "loom" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.139.0"

  if Hardware::CPU.intel?
    sha256 "164302b09a0785d409795e91ecaa6fc857cdb95484f1025db03a4cc2afa2bb1a"
  else
    sha256 "12ab232d907e54de6475bb82d7bd2e4b3cf2d38f308ee6c9ad9439bbe62629c6"
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
