cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.16"
  sha256 arm:   "80c6833b239815026d7e637bab2fc8901532f80f2f984878e6ce9c0813df8f60",
         intel: "f5e0e3388d2d415ae5bd92b281d1eed4da04cde51762a55176a3f8f9bd1f0233"

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
