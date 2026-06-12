cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.31"
  sha256 arm:   "13231acf4625e74963050429b62b9afd5bdffee74ac7eaa8071615dc3139c838",
         intel: "ee335fc49163396034994b7853b441875bdd3a306426bd9c15a60ce027e6b5bf"

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
