cask "token-monitor" do
  arch arm: "arm64", intel: "x64"

  version "0.50.0"
  sha256 arm:   "10e123ba1715ed87588f25f8e3a72276a844c8490b9d000ca3bfe6d65a79ddc3",
         intel: "e1a1c0189123d34567dd41bc4317ef417b6eaa1faa1c9f594f4fdb91752d0e01"

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
