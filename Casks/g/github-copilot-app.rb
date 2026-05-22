cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.8"
  sha256 arm:   "e472a1d631ddc1ab3cc12d2d756e85ada2c6ca405d8be51b9a6a649e7c8ec9a4",
         intel: "d7ff84f257fb0e85585da254bf5bc12ee9930cdbd251629bb044b4cd8fa22ea2"

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
