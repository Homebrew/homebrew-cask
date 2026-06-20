cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "1.0.3"
  sha256 arm:   "f5ce70a1d58c2b0398ae89b6b47cda664f3cb22c5f300312bfa5471731c92969",
         intel: "b5c1472de9e0ef6a0023496ead490a7cb254d2ac3cf9ff5801833f57822cdeec"

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
