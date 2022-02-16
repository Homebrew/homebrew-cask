cask "loom" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.112.19"

  if Hardware::CPU.intel?
    sha256 "55063eda44bac6fb72a422274e3d356df446eeea5da9fd1645d57ed5e39fcd18"
  else
    sha256 "412100d661babdd489d415f58be31676bc305fa0a8478b72f1c6e4d028e3797e"
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
