cask "loom" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.125.0"

  if Hardware::CPU.intel?
    sha256 "b976bec03b69b8111367889099dee238c145f4180128868ebe24cafa14d3e84b"
  else
    sha256 "516a67924e043761e19d6bda2510e6e5e03465d490185c08f195ee929832129e"
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
