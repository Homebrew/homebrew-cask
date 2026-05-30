cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.17"
  sha256 arm:   "8833bad4c0cd603588c9cbde9a8a111ad92368ba681a762bbbb8ff05ebfc80bc",
         intel: "a2066db9403b91e3f3587afdf497da8107e8b261296fec69527552898d3417b6"

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
