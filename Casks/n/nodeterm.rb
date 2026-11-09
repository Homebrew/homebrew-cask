cask "nodeterm" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "0.5.1"
  sha256 arm:          "16591257a13455a4f291a2d76e293366672fe33f253866edd9dbb699f25a67ce",
         intel:        "d236c113a61a13dc036b58be04e0fb04657a155e276612663c65d4919d10be77",
         x86_64_linux: "0da06fb61da22dda185d740f21b0208ff3a18c518219740b6c91aea11d67cc5c"

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
