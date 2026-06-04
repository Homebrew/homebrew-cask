cask "github-copilot-app" do
  version "0.2.23"

  on_arm do
    sha256 "5daa1875e1a3ff46964764e0f6259e181190b7b94b43397590cc3f337dea6027"
    url "https://github.com/github/app/releases/download/v#{version}/GitHub-Copilot-darwin-arm64.dmg"
  end
  on_intel do
    sha256 "ff0ac4a7f2ab22e7812a22e44954655837eb84db1091b420e02e8b6a032ede89"
    url "https://github.com/github/app/releases/download/v#{version}/GitHub-Copilot-darwin-x64.dmg"
  end

  name "GitHub Copilot Desktop App"
  desc "AI-powered developer desktop application by GitHub"
  homepage "https://github.com/github/app"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  app "GitHub Copilot.app"

  zap trash: [
    "~/Library/Application Support/GitHub Copilot",
    "~/Library/Preferences/com.github.copilot.plist",
    "~/Library/Saved Application State/com.github.copilot.savedState",
  ]
end
