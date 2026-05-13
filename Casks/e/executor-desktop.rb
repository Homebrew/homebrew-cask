cask "executor-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.4.28"
  sha256 arm:   "b1e5a8f370ac93914b20b85071e282828ae736b9c3a32e921ea3558b432c4add",
         intel: "29de91639428e2b82b6c50688ee4ce0824e5e3ce1246948ed7b10e21bdd3dfc7"

  url "https://github.com/RhysSullivan/executor/releases/download/v#{version}/executor-desktop-mac-#{arch}.dmg",
      verified: "github.com/RhysSullivan/executor/"
  name "Executor"
  desc "Tool discovery and execution layer for AI agents"
  homepage "https://executor.sh/"

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
