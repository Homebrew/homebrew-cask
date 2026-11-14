cask "token-monitor" do
  arch arm: "arm64", intel: "x64"

  version "0.92.0"
  sha256 arm:   "973995f3d9f402c4847925349e35e145553184349e1a49135fd4f6467fb62fa0",
         intel: "d5952324d11526ced8c9fbf06349045b4fa205891b3ca80ed8f3fffcaac3fb14"

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
