cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.7"
  sha256 arm:   "b9d205f27284ac8e122bbe0a8f53ab24dfc2f3d8979d75bcb4f6172ef32677b1",
         intel: "dd7e8d7c80b7aead42ab14ee882d1c494573e08b479c49f270540c2333056f32"

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
