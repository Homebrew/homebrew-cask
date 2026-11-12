cask "devtools" do
  arch arm: "arm64", intel: "x64"

  version "2.11.0"
  sha256 arm:   "58c08c944ffccb1f071337c6ccb8bb0e19d028abdd8e71edf8d18243fca1427b",
         intel: "76ed6c1e9de8233be59e61eb98a0eb68010eca47652d49a02f14f095cb08c740"

  url "https://github.com/me-shaon/devtools/releases/download/v#{version}/DevToolsApp-macos-#{arch}.dmg"
  name "DevTools"
  desc "Collection of developer utilities"
  homepage "https://github.com/me-shaon/devtools"

  auto_updates true
  depends_on :macos

  app "DevToolsApp.app"

  zap trash: [
    "~/Library/Application Support/com.meshaon.devtoolsapp",
    "~/Library/Caches/com.meshaon.devtoolsapp",
    "~/Library/Preferences/com.meshaon.devtoolsapp.plist",
    "~/Library/Saved Application State/com.meshaon.devtoolsapp.savedState",
    "~/Library/WebKit/com.meshaon.devtoolsapp",
  ]
end
