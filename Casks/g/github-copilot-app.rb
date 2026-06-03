cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.19"
  sha256 arm:   "56b7b9337d81b2bda770520005a667c96f246fd0d9a1771922cae484c547856f",
         intel: "f1c05f392a0320ba4451c22e4a5b92b7fca4fb8872b73abfe145a718dd691074"

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
