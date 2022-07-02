cask "loom" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.136.0"

  if Hardware::CPU.intel?
    sha256 "b5152e6e42a37e2b070fd940c768957f64af64b6d8d9b2f1ce71f59a6356d8ed"
  else
    sha256 "b5e27bd7de694fae2241a964f7360173228be39088660e23844f131be68a3a46"
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
