cask "loom" do
  arch arm: "-arm64"

  version "0.174.8"
  sha256 arm:   "a93640cc3f68c9e4b62ac432a72f6ef1cd490729b8c9974d5b6bea9408c25884",
         intel: "e97a7a0c276894b1f7d03e0c6891fedfb217935f95aaad09a048279c56bbd716"

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
