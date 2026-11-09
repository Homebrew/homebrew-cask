cask "token-monitor" do
  arch arm: "arm64", intel: "x64"

  version "0.89.0"
  sha256 arm:   "07ecad4d434f57576ac964c7d416bc56bce117fdff2acb64b583d79ab7fd00ba",
         intel: "71837eb4cdc11efef392df6d4668cb13c6c9335235c9305327c45c816c830d2a"

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
