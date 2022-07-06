cask "loom" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.136.1"

  if Hardware::CPU.intel?
    sha256 "0c7def7cebc5a3e6a01918cbe0e325280e05ed17d30e86b82171e1be38d80731"
  else
    sha256 "8eabba9eac563573a5e81bf0d66b6f3d8a8869253b92fdacc09fe865c9b1680b"
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
