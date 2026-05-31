cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.18"
  sha256 arm:   "502a660a649c6ef9cdca724005f4bae0aa38648c75676b427ce4860dd925f6de",
         intel: "7aa52f7b9c7b11b033a3169caf40f0671b5b5e34899e3ee628427bac7c7abb9d"

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
