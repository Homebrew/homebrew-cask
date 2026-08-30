cask "executor" do
  arch arm: "arm64", intel: "x64"

  version "1.6.4"
  sha256 arm:   "795d6238f77f0322249dc680d4c2cfc7afa5cf94d541b25905d1af82b7a349cf",
         intel: "42e2e8ce45ede0ed56d328018b746db6fc6d3acb2bbdc28fd324ae1829236827"

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
