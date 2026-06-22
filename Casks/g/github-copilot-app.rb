cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.3"
  sha256 arm:          "f5ce70a1d58c2b0398ae89b6b47cda664f3cb22c5f300312bfa5471731c92969",
         intel:        "b5c1472de9e0ef6a0023496ead490a7cb254d2ac3cf9ff5801833f57822cdeec",
         arm64_linux:  "0fadadb65708228955ce54208d7df614306b5319d81d35f9b5fc6deddee1cda5",
         x86_64_linux: "7e6c6f812d1d845490999f09e463fcc046c61447a3e328d7a3e70ce13d06e795"

  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  url "https://github.com/github/app/releases/download/v#{version}/GitHub-Copilot-#{os}-#{arch}.#{suffix}"
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
