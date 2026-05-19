cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.6"
  sha256 arm:   "279992c9a2fb46fb0c89bf94638d4a11ad940eeadf115cdc3897a0d7a45978df",
         intel: "073bd8e2b57d1da29f2989ab83804bfeb278ae6dbb73bb7b6f6ce7f5438c2478"

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
