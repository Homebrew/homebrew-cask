cask "codexia" do
  arch arm: "aarch64", intel: "x64"

  version "0.42.1"
  sha256 arm:   "ea4827dc311bab6f61f06ce40c750a6b4f36f1907afd47641a6b8160869487ea",
         intel: "0963bedda2fcc12778277ef361733f9eaab9c3b80e7c0870c6ba237c9d344854"

  url "https://github.com/milisp/codexia/releases/download/v#{version}/codexia_#{version}_#{arch}.dmg"
  name "Codexia"
  desc "GUI and toolkit for Codex CLI and Claude Code"
  homepage "https://github.com/milisp/codexia"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Codexia.app"

  zap trash: [
    "~/.codexia",
    "~/Library/Application Support/dev.milisp.codexia",
    "~/Library/Caches/dev.milisp.codexia",
    "~/Library/Logs/dev.milisp.codexia",
    "~/Library/Preferences/dev.milisp.codexia.plist",
    "~/Library/WebKit/dev.milisp.codexia",
  ]
end
