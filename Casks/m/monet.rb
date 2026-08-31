cask "monet" do
  version "2.2.8"
  sha256 "b77897c47f56bd36a3cbbed202cc87f86e686ddecca08101b0c8aa1c3381d3e8"

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
  depends_on macos: :big_sur

  app "Monet.app"

  uninstall launchctl: [
    "io.github.zenolab124.monet.tray",
    "io.github.zenolab124.monet.widget-updater",
  ]

  zap trash: [
    "~/.monet",
    "~/Library/Application Support/io.github.zenolab124.monet",
    "~/Library/Caches/io.github.zenolab124.monet",
    "~/Library/HTTPStorages/io.github.zenolab124.monet",
    "~/Library/LaunchAgents/io.github.zenolab124.monet.tray.plist",
    "~/Library/LaunchAgents/io.github.zenolab124.monet.widget-updater.plist",
    "~/Library/Logs/io.github.zenolab124.monet",
    "~/Library/Preferences/io.github.zenolab124.monet.plist",
    "~/Library/Saved Application State/io.github.zenolab124.monet.savedState",
    "~/Library/WebKit/io.github.zenolab124.monet",
  ]
end
