cask "nodeterm" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "0.4.3"
  sha256 arm:          "a8edf68f9212e8466a709b1a14ce01c5b16ad8f85307c1c9f1e3967a3248adae",
         intel:        "2d60b5cba6b98fa4d64118c15257e1e3c0ff336d51b8d2601ce969dcd823bef0",
         x86_64_linux: "455aab5f409dc2c6fb7bbaaae556959ad76e0c50e6a752ae3a4ca91ed09734e0"

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
