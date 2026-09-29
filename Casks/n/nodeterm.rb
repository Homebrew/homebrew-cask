cask "nodeterm" do
  arch arm: "-arm64"

  version "0.3.17"
  sha256 arm:   "8cf6457828549bc5b7efe95842363e2c5ff278855068e657d039fc101ec5207c",
         intel: "99f32774bbedf9de11ab9cce775d84f7c12afea1185e209ae3e0a30f1a2c575b"

  url "https://github.com/eneskirca/nodeterm/releases/download/v#{version}/nodeterm-#{version}#{arch}.dmg"
  name "nodeterm"
  desc "Node-based terminal manager for terminals and coding agents on a canvas"
  homepage "https://nodeterm.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "nodeterm.app"

  uninstall quit: "com.nodeterm.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nodeterm.app.sfl*",
    "~/Library/Application Support/node-terminal",
    "~/Library/Caches/com.nodeterm.app",
    "~/Library/Caches/com.nodeterm.app.ShipIt",
    "~/Library/Caches/node-terminal-updater",
    "~/Library/HTTPStorages/com.nodeterm.app",
    "~/Library/Preferences/ByHost/com.nodeterm.app.ShipIt.*.plist",
    "~/Library/Preferences/com.nodeterm.app.plist",
  ]
end
