cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.22"
  sha256 arm:   "d73eb123de198493a4ba11ac80e85114646d024a78fea88c90372223bfad2006",
         intel: "d8df9f851992b0c3c4035a7bacaa0103d8c5b587662f605f96ffb5cd2fde1a5d"

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
