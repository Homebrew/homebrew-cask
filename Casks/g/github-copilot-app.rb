cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.27"
  sha256 arm:   "34b99ac97b7a726dc57f8a8120a197df1e9ea3bc7b60aa0ea278c6ed8929f0cd",
         intel: "fd4fff43571db1731fc9ed226fc51df5204125010efe42a03c397ff8cf6c9f25"

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
