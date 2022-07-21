cask "loom" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.137.1"

  if Hardware::CPU.intel?
    sha256 "f50a75d1f6fd9aba35f03a8f2187589bfe40deb738ba8ef1d676bdb22f31b790"
  else
    sha256 "81d2da7e164eb971c3c7487eb4d6d717d46582c3947e5eda94aa07bd8271046c"
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
