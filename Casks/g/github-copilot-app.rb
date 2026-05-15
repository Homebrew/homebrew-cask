cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.4"
  sha256 arm:   "df7c73333f6f776c5b35398599b37cfebd8bcd9811a44f00a8038802ac8982fc",
         intel: "aa90d9d87dbd8fcaa0032ddb60dfdd5634f74fe188335f1e55f42826adab808f"

  url "https://github.com/github/app/releases/download/v#{version}/GitHub-Copilot-darwin-#{arch}.dmg"
  name "GitHub Copilot"
  desc "Native client for GitHub Copilot"
  homepage "https://github.com/github/app"

  depends_on :macos

  app "GitHub Copilot.app"

  zap trash: [
    "~/Library/Caches/com.github.githubapp",
    "~/Library/WebKit/com.github.githubapp",
  ]
end
