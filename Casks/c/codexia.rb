cask "codexia" do
  arch arm: "aarch64", intel: "x64"

  version "0.44.0"
  sha256 arm:   "484398949440ac8993212696d447d4c34a4eb9e49470e6d67e888f627d11deff",
         intel: "f4a8bbf9a0b72879a7d7f764cc42be08f01c0ecff5e34375c72d4cfe14c23be1"

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
