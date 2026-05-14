cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.2"
  sha256 arm:   "cc85396e698b2868b5d939b9e9493c4ebe6e43f1731ae7165f696d731832b9c9",
         intel: "43a9a052b742c83278139980f385558aaa7f4f512a694099eda23985a44ca19e"

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
