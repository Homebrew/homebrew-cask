cask "codexia" do
  arch arm: "aarch64", intel: "x64"

  version "0.45.0"
  sha256 arm:   "5163a98a36138aaab9f16aa2fc85c9ba710f65628e7e7ccb9d1a3e2a7fbf5197",
         intel: "00c12d951efcc42c1cc113c7ac1675070464b67425a270ef4ef4cb07040fcfce"

  url "https://github.com/milisp/codexia/releases/download/v#{version}/codexia_#{version}_#{arch}.dmg"
  name "Codexia"
  desc "GUI and toolkit for Codex CLI and Claude Code"
  homepage "https://github.com/milisp/codexia"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "codexia.app"

  zap trash: [
    "~/.codexia",
    "~/Library/Application Support/dev.milisp.codexia",
    "~/Library/Caches/dev.milisp.codexia",
    "~/Library/Logs/dev.milisp.codexia",
    "~/Library/Preferences/dev.milisp.codexia.plist",
    "~/Library/WebKit/dev.milisp.codexia",
  ]
end
