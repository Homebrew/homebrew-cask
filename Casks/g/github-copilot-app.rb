cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.33"
  sha256 arm:   "ca73f0137ba3fc4a264d0c6c7fe4cf9ca727d5b8ac4c34c2678892758f1ea591",
         intel: "715aefe3ee3dcbfce0ab49f79ffb87964da904b0ace3a30266e971032029199d"

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
