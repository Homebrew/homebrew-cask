cask "executor" do
  arch arm: "arm64", intel: "x64"

  version "1.5.24"
  sha256 arm:   "290aee37f645ee7abdb019e1a53fb8a4849f256313a6ed58b0784eead5c30914",
         intel: "a8712da6f667b5a2cc2c86f591cd2611d8b9adcc8f2adf4c349c11c8ada8e9f5"

  url "https://github.com/RhysSullivan/executor/releases/download/v#{version}/executor-desktop-mac-#{arch}.dmg",
      verified: "github.com/RhysSullivan/executor/"
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
    "~/Library/Application Support/@executor-js/desktop",
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
