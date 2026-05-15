cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.5"
  sha256 arm:   "54ef13e131d80cb39044c1d8cfc617d2a6a4155ed56bd68f64f5b7ff10a1860c",
         intel: "339ce3fe31dc647b69652dbbc093d0c868f64d88a0a3ac059036fdbaa95d733a"

  url "https://github.com/github/app/releases/download/v#{version}/GitHub-Copilot-darwin-#{arch}.dmg"
  name "GitHub Copilot"
  desc "Native client for GitHub Copilot"
  homepage "https://github.com/github/app"

  depends_on :macos

  app "GitHub Copilot.app"

  zap trash: [
    "~/Library/Caches/com.github.githubapp",
    "~/Library/WebKit/com.github.githubapp",
  ]
end
