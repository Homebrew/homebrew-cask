cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "b173171709535e271e82d92bf8b1ff89303ba3cf688fab9b9617b0a47b6792a9",
         intel: "ce8197ef4203908fb3bc00f2809b9dab3e539616a0c8a541d8a2fcbe97a52eb8"

  url "https://github.com/github/app/releases/download/v#{version}/GitHub-Copilot-darwin-#{arch}.dmg"
  name "GitHub Copilot"
  desc "Native client for GitHub Copilot"
  homepage "https://github.com/github/app"

  auto_updates true
  depends_on :macos

  app "GitHub Copilot.app"

  zap trash: [
    "~/Library/Application Support/com.github.githubapp",
    "~/Library/Caches/com.github.githubapp",
    "~/Library/Preferences/com.github.githubapp.plist",
    "~/Library/WebKit/com.github.githubapp",
  ]
end
