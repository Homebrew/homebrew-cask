cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.9"
  sha256 arm:   "98532fd40750297ee3e4959b4825246b104b02ad3f375767041150a7525ce99a",
         intel: "0a909ce3952509964a432ec7b0d45a5c53026d2d0a7f83dfe2daf1d0adfc1c5c"

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
