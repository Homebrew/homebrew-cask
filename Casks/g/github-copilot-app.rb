cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.11"
  sha256 arm:   "9a9809ccb30bc57192cfb9e6e39f5f2fd68816067b0fe28162ddd4a7fa0858b3",
         intel: "1bfe3376fe192e314fa40e070acbf916aac82f9b9daef0e985a5e516ac31d8a7"

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
