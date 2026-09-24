cask "token-monitor" do
  arch arm: "arm64", intel: "x64"

  version "0.62.0"
  sha256 arm:   "a424730200bf75e5547a7b5fa62705c6d015788a94d66f664caf99965167aba1",
         intel: "b5014b69f81ed5516cec105a85c11e9e1d96e54e250ad979809c4fc701d83958"

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
