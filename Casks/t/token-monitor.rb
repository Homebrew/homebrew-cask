cask "token-monitor" do
  arch arm: "arm64", intel: "x64"

  version "0.84.0"
  sha256 arm:   "08c6ca9fc58a4927deb8049d9ec1c613bb8b2d9cf312585b1351bedb337ce769",
         intel: "e17e0dc2b4bd41da4b78b59a4a757c139fad2c7e1f5e125494d94ec5b1c64efb"

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
