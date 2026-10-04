cask "token-monitor" do
  arch arm: "arm64", intel: "x64"

  version "0.66.0"
  sha256 arm:   "719ae3dea2b7b721ca0954c363a82ac3794781e6fa5a3c2e58d072c1934f538c",
         intel: "33948df183f1512c12fe5a9f8a82978e95ab92fcf32157a61c9d059b4be279d9"

  url "https://github.com/Javis603/token-monitor/releases/download/v#{version}/Token-Monitor-#{version}-#{arch}.dmg"
  name "Token Monitor"
  desc "Monitor token usage, costs, and limits across AI coding tools"
  homepage "https://javis-ai.com/token-monitor/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Token Monitor.app"

  uninstall quit: "com.javis.tokenmonitor"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.javis.tokenmonitor.sfl*",
    "~/Library/Application Support/Token Monitor",
    "~/Library/Caches/com.javis.tokenmonitor",
    "~/Library/Caches/com.javis.tokenmonitor.ShipIt",
    "~/Library/HTTPStorages/com.javis.tokenmonitor",
    "~/Library/Logs/Token Monitor",
    "~/Library/Preferences/com.javis.tokenmonitor.plist",
    "~/Library/Saved Application State/com.javis.tokenmonitor.savedState",
    "~/Library/WebKit/com.javis.tokenmonitor",
  ]
end
