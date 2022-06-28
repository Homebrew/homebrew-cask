cask "loom" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.135.0"

  if Hardware::CPU.intel?
    sha256 "cf540f702b1b1008d4c493155bbdaf91e6a4521ddb220081c32fec6f2a973d7b"
  else
    sha256 "ef2c17455c7490fae3cddf4c2c84bef183d7924dc2a77fb5f0be7f125ae85cc9"
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
