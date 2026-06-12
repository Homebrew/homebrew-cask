cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.32"
  sha256 arm:   "f1fe5f109c442398c0f424bd2ee47ac977802cff0cb80cf7e7aff5dc002dda93",
         intel: "542be3c39c47f0562794d8e79b0b66b0b5857330925e479f8ca7677dbceccd44"

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
