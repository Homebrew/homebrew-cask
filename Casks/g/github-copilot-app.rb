cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.3"
  sha256 arm:   "d6caf297f5fa566895d1b34d4e30bbaf13d34f1ef2406f3a429c440439553d02",
         intel: "106388b2aca51e8699e04589eddda2a480595e7edbc427a0d953ba660e9f35ea"

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
