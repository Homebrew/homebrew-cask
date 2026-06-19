cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "1.0.2"
  sha256 arm:   "892a30ef80f93590f4089d3f817dbd3348fc8827ebb0a09b38a186abdcee8d64",
         intel: "216b61e73f4f97236920a8f50cec325de5edb6e47f016b2ca38ca492410604c2"

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
