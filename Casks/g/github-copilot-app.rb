cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.28"
  sha256 arm:   "43a1a20da2f83c5c49c5fb92c394e2d93241569b0c36a4f91652b67fa2bbf352",
         intel: "9f006d79fbd37221041f8bae860d234abfa25ea92fc7ae4fa6f9e1dee0ce105a"

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
