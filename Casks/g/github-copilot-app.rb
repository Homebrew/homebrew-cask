cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.10"
  sha256 arm:   "cf66fe7f9f91820b983198536c9014f21e0a6ac87e5140ea1e1eddcdb0f30e85",
         intel: "669fef52e1773b85fd2611d04754d53d59a79d68469505346e4add7d83312fbe"

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
