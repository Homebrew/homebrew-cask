cask "monet" do
  version "2.3.0"
  sha256 "2f17427d5da52ff1491d8d3a15b3120bc4e3ca79adde4333cb61d339bdb926e2"

  url "https://github.com/zenolab124/monet/releases/download/v#{version}/Monet_#{version}_aarch64.dmg"
  name "Monet"
  desc "Multi-engine mission control for coding agents"
  homepage "https://github.com/zenolab124/monet"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Monet.app"

  uninstall launchctl: [
    "io.github.zenolab124.monet.tray",
    "io.github.zenolab124.monet.widget-updater",
  ]

  zap trash: [
    "~/.monet",
    "~/Library/Application Scripts/BKJ3T6HL57.io.github.zenolab124.monet",
    "~/Library/Application Scripts/io.github.zenolab124.monet.widget",
    "~/Library/Application Support/io.github.zenolab124.monet",
    "~/Library/Caches/io.github.zenolab124.monet",
    "~/Library/Containers/io.github.zenolab124.monet.widget",
    "~/Library/Group Containers/BKJ3T6HL57.io.github.zenolab124.monet",
    "~/Library/HTTPStorages/io.github.zenolab124.monet",
    "~/Library/LaunchAgents/io.github.zenolab124.monet.tray.plist",
    "~/Library/LaunchAgents/io.github.zenolab124.monet.widget-updater.plist",
    "~/Library/Logs/io.github.zenolab124.monet",
    "~/Library/Preferences/io.github.zenolab124.monet.plist",
    "~/Library/Saved Application State/io.github.zenolab124.monet.savedState",
    "~/Library/WebKit/io.github.zenolab124.monet",
  ]
end
