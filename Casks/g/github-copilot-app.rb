cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.30"
  sha256 arm:   "d07d1bebe17867085cd367f245106e741662dd63b64f88184ef8d3b4480f1b54",
         intel: "99dd714a13ee630cf5e6b734a4601400d4b30149feddf0c46c5e0682012db1fa"

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
