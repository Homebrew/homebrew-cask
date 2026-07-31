cask "codexia" do
  arch arm: "aarch64", intel: "x64"

  version "0.42.2"
  sha256 arm:   "f86dc04fcfae57c0daf7523ad7ff99ec7c11439345cb59d12ca00ec2bc97dd3b",
         intel: "7f05a88de4e0072292a5f9bc6d9aa3121cc2458e0ffad04abc10dfe030a3a90b"

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
