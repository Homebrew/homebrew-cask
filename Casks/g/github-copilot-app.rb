cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.29"
  sha256 arm:   "c7cff30377ac9f47dd843246f901a9171609a751dd81f1e98dc5cda38668105b",
         intel: "a8bbe4c81c34dc9601ac7e1eb1642f31fbb8416d4e9f4312f6796f8b6ddc31d1"

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
