cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.12"
  sha256 arm:   "d806f7db431a5752b409762dba6034a89c70ad8b3fb186ca5e9677d80794b731",
         intel: "50576c250c4943d4d94aef4793049532c1dadd3564750985dd399ed8854ed5ed"

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
