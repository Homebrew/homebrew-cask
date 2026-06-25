cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.8"
  sha256 arm:          "62a5d9c1c283f464fa1016e39fd3ae74c4b83204e12d5a4149401971b7e042b3",
         intel:        "08d714512720b68da3fd9258e9dba445041c46c45e3af891a76f0a09c452fb29",
         arm64_linux:  "2aeb7cebe09c3bcc096153a405cb729cf6dda1250bcc2793a5d12041f8750faf",
         x86_64_linux: "61464a1a726f489781b52a595a31a67bebd4408142604165e8470b281ce88c23"

  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  url "https://github.com/github/app/releases/download/v#{version}/GitHub-Copilot-#{os}-#{arch}.#{url_end}"
  name "GitHub Copilot"
  desc "Native client for GitHub Copilot"
  homepage "https://github.com/github/app"

  on_macos do
    auto_updates true

    app "GitHub Copilot.app"

    zap trash: [
      "~/Library/Application Support/com.github.githubapp",
      "~/Library/Caches/com.github.githubapp",
      "~/Library/Preferences/com.github.githubapp.plist",
      "~/Library/WebKit/com.github.githubapp",
    ]
  end

  on_linux do
    app_image "GitHub-Copilot-linux-#{arch}.AppImage", target: "GitHub Copilot.AppImage"
  end
end
