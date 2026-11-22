cask "token-monitor" do
  arch arm: "arm64", intel: "x64"

  version "0.96.1"
  sha256 arm:   "90e4a881ecf4b23b78566adbd5bf5807c9b26753ef67d604d04bf036b76f01a9",
         intel: "fdc630d3e267832ba325d0523ef94277aa183b60bbfd253c986a0644719f8029"

  url "https://github.com/Javis603/token-monitor/releases/download/v#{version}/Token-Monitor-#{version}-#{arch}.dmg"
  name "Token Monitor"
  desc "Monitor token usage, costs, and limits across AI coding tools"
  homepage "https://javis-ai.com/token-monitor/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Token Monitor.app"

  uninstall quit: "com.javis.tokenmonitor"

  zap trash: [
    "~/Library/Application Scripts/com.javis.tokenmonitor.widget",
    "~/Library/Application Scripts/group.com.javis.tokenmonitor.macos",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.javis.tokenmonitor.sfl*",
    "~/Library/Application Support/Token Monitor",
    "~/Library/Caches/com.javis.tokenmonitor",
    "~/Library/Caches/com.javis.tokenmonitor.ShipIt",
    "~/Library/Containers/com.javis.tokenmonitor.widget",
    "~/Library/Group Containers/group.com.javis.tokenmonitor.macos",
    "~/Library/HTTPStorages/com.javis.tokenmonitor",
    "~/Library/Logs/Token Monitor",
    "~/Library/Preferences/com.javis.tokenmonitor.plist",
    "~/Library/Saved Application State/com.javis.tokenmonitor.savedState",
    "~/Library/WebKit/com.javis.tokenmonitor",
  ]
end
