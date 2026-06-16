cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.34"
  sha256 arm:   "15ccd5426461082c7e9362b6b7f103f376808f177620eba0a6a29982269f3bd5",
         intel: "f040823308248c6f0c49dd7bb0a1b9260470309ee6b64d39d3005831c443af09"

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
