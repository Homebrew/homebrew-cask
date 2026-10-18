cask "nodeterm" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "0.4.4"
  sha256 arm:          "ee0fc6404ea46e4f3180feebe314b1b8c11111a97409c142e71a68c06256b9fb",
         intel:        "f7b1732034b6012c4cec3fb7feb7065e08e99ba609c61e3cd91f8baabcea2672",
         x86_64_linux: "8e33dfaa5a90fefe576383bc7ac5745b42a30529bce9eadda29a52397f2250ab"

  on_macos do
    depends_on macos: :monterey

    app "nodeterm.app"

    uninstall quit: "com.nodeterm.app"

    zap trash: [
      "~/.nodeterm",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nodeterm.app.sfl*",
      "~/Library/Application Support/node-terminal",
      "~/Library/Caches/com.nodeterm.app",
      "~/Library/Caches/com.nodeterm.app.ShipIt",
      "~/Library/Caches/node-terminal-updater",
      "~/Library/HTTPStorages/com.nodeterm.app",
      "~/Library/Preferences/ByHost/com.nodeterm.app.ShipIt.*.plist",
      "~/Library/Preferences/com.nodeterm.app.plist",
      "~/Library/Saved Application State/com.nodeterm.app.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "nodeterm-#{version}.AppImage", target: "nodeterm.AppImage"

    zap trash: [
      "~/.cache/node-terminal",
      "~/.cache/node-terminal-updater",
      "~/.config/node-terminal",
      "~/.nodeterm",
    ]
  end

  url "https://github.com/eneskirca/nodeterm/releases/download/v#{version}/nodeterm-#{version}#{arch}.#{os}"
  name "nodeterm"
  desc "Node-based terminal manager for terminals and coding agents on a canvas"
  homepage "https://nodeterm.dev/"

  auto_updates true
end
