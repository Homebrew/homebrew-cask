cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.23"
  sha256 arm:   "5daa1875e1a3ff46964764e0f6259e181190b7b94b43397590cc3f337dea6027",
         intel: "ff0ac4a7f2ab22e7812a22e44954655837eb84db1091b420e02e8b6a032ede89"

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
