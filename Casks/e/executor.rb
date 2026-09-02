cask "executor" do
  arch arm: "arm64", intel: "x64"

  version "1.6.7"
  sha256 arm:   "3d3336c3cf1e7a49105a04ad2904dcde0f13aac8a3ce1ee268c5c718bb62572c",
         intel: "7a1edffe4385374f051b8cad2245049862bd25ddeb4a07f63b06788151472c5d"

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
