cask "codexia" do
  arch arm: "aarch64", intel: "x64"

  version "0.41.1"
  sha256 arm:   "90ee741db294714d040044e32d85b6b5f8c28fd0ee6b138730a509baf01c60e7",
         intel: "2399039e260ec57650c39165794233302e5a4f3a7a95b89dd894337df29f048f"

  url "https://github.com/milisp/codexia/releases/download/v#{version}/codexia_#{version}_#{arch}.dmg"
  name "Codexia"
  desc "GUI and toolkit for Codex CLI + Claude Code"
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
