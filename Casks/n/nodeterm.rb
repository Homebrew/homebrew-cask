cask "nodeterm" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "0.4.5"
  sha256 arm:          "63c305f740b50b1a2602b3459efe8b4187be5276fa091cc3a34df16d0e64c333",
         intel:        "1651c663e4effb711f4dcded58ba3045b8fb6fadc5f4aa079377ccc5f8fe62b0",
         x86_64_linux: "cd3594c3dd260ff7ff0e99b98e3f25189e265a74d4caabec9e2f93ec6353a1fd"

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
