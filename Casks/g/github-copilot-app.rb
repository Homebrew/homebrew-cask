cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "aa214630c628579a0e3114e1743547fd32c98fcfad74f6fc5cf39d67099b0d8d",
         intel: "9aa72ae6bbd7658d5c0849cf27f7fa21041e733f1fc1e0e6c26c28f5e345adbb"

  url "https://github.com/github/app/releases/download/v#{version}/GitHub-Copilot-darwin-#{arch}.dmg"
  name "GitHub Copilot"
  desc "Native client for GitHub Copilot"
  homepage "https://github.com/github/app"

  auto_updates true
  depends_on :macos

  app "GitHub Copilot.app"

  zap trash: [
    "~/Library/Application Support/com.github.githubapp",
    "~/Library/Caches/com.github.githubapp",
    "~/Library/Preferences/com.github.githubapp.plist",
    "~/Library/WebKit/com.github.githubapp",
  ]
end
