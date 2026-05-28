cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.13"
  sha256 arm:   "a7d735c045420322e7a85318a777a35fea025f1b0a9b00a8fab6e35188e4c178",
         intel: "5c25281e0eea4120225d484fa9e49b8688e5a666a1f7900c72bf7545ca4a3c6f"

  url "https://github.com/github/app/releases/download/v#{version}/GitHub-Copilot-darwin-#{arch}.dmg"
  name "GitHub Copilot"
  desc "Native client for GitHub Copilot"
  homepage "https://github.com/github/app"

  auto_updates true
  depends_on :macos

  app "GitHub Copilot.app"

  zap trash: [
    "~/Library/Caches/com.github.githubapp",
    "~/Library/WebKit/com.github.githubapp",
  ]
end
