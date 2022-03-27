cask "loom" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.118.0"

  if Hardware::CPU.intel?
    sha256 "340c8d0753aac92cac065a273d3a6b389db0ee584a26da834a9baed59f97f23f"
  else
    sha256 "c9e4f90e59d564f9dd3b693da6cd13bd20e413e937bc47a2bf49f8ff87a7bc52"
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

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
