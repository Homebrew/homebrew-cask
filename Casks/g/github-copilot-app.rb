cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.24"
  sha256 arm:   "404788cf0ae1b388d4cfaaa4d3d804df18096df201c78968c9574fb07fbcc476",
         intel: "007bed522ff0ea9357404ae91d8d029d46505667477d718697ac0899571c5916"

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
