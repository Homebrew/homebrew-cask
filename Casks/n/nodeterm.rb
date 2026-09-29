cask "nodeterm" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "0.4.2"
  sha256 arm:          "6ed1936b9c11475504d329fb0fba38c91d844c37d0346b18aa2b0ae6c7ffd7f5",
         intel:        "48f2221e7626c15f46d20fc22e7f5c9daa1219e24f2cba01e2c1689cd108ea5d",
         x86_64_linux: "d7d70f0fd3a6f4b34d2ad71b5ba2e17214084576adb9f7ac62a537e310e68054"

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
