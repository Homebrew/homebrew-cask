cask "codexia" do
  arch arm: "aarch64", intel: "x64"

  version "0.42.0"
  sha256 arm:   "6a670b42faee2f2d415e7af891e4810d9c19081e30fb2b5b458796313f1ef837",
         intel: "9aeb9461c3ddc56c9ee70ee284bf4c0c609e208e29c761b0d0601fcfa0da4247"

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
