cask "executor" do
  arch arm: "arm64", intel: "x64"

  version "1.6.10"
  sha256 arm:   "41d106f74fb74701d308ace94990a903201592f74adcfdf93106298d6bae73ff",
         intel: "7dff243b50f6e1bbf21f3c312b9b91aae557a0bc99070cbc4854476912a41f5b"

  url "https://github.com/RhysSullivan/executor/releases/download/v#{version}/executor-desktop-mac-#{arch}.dmg"
  name "Executor"
  desc "Tool discovery and execution layer for AI agents"
  homepage "https://executor.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Executor.app"

  uninstall quit: "sh.executor.desktop"

  zap trash: [
    "~/.executor",
    "~/.local/share/executor",
    "~/Library/Application Support/@executor-js",
    "~/Library/Application Support/@executor-js/desktop",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/sh.executor.desktop.sfl*",
    "~/Library/Application Support/Executor",
    "~/Library/Caches/sh.executor.desktop",
    "~/Library/Caches/sh.executor.desktop.ShipIt",
    "~/Library/HTTPStorages/sh.executor.desktop",
    "~/Library/HTTPStorages/sh.executor.desktop.binarycookies",
    "~/Library/Logs/Executor",
    "~/Library/Preferences/sh.executor.desktop.plist",
    "~/Library/Saved Application State/sh.executor.desktop.savedState",
  ]
end
