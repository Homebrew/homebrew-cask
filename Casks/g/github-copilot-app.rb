cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.14"
  sha256 arm:   "41576622a9e8cbcb61a7ee5b47d4f1af21204b2740f7587e911677484b970131",
         intel: "b507eaf79edd09c0c98bdfb98bd9aaf1d425800711d4ce7ebd62a9d0f04021fb"

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
