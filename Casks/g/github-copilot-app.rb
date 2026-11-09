cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.35"
  sha256 arm:          "0214c309a890950e1be0c64605973f60a381fc6c98a0c8db2ccb7052ee9b0f45",
         intel:        "404cd9374d3efd0f0ab7b23533ce893fa3776a688db9a8733e9152bcf837bc3f",
         arm64_linux:  "f6553a84a273660c42d552d03039ae558ca59e7409e619d53f7527f5d1d5f57a",
         x86_64_linux: "89ffae20f2387c0a218c1e9e01b5eb4a63c37e69aa644b482901553668f4ccc5"

  on_macos do
    auto_updates true

    app "GitHub Copilot.app"

    zap trash: [
      "~/.copilot",
      "~/.github-copilot-cli",
      "~/Library/Application Support/com.github.githubapp",
      "~/Library/Caches/com.github.githubapp",
      "~/Library/Caches/copilot",
      "~/Library/Caches/copilot-desktop-gh-*",
      "~/Library/Caches/github-copilot-git-*",
      "~/Library/Caches/github-copilot-sdk",
      "~/Library/Preferences/com.github.githubapp.plist",
      "~/Library/WebKit/com.github.githubapp",
    ]
  end
  on_linux do
    app_image "GitHub-Copilot-linux-#{arch}.AppImage", target: "GitHub Copilot.AppImage"

    zap trash: [
      "~/.cache/copilot",
      "~/.cache/copilot-desktop-gh-*",
      "~/.cache/github-copilot-git-*",
      "~/.cache/github-copilot-sdk",
      "~/.config/autostart/GitHub Copilot.desktop",
      "~/.config/com.github.githubapp",
      "~/.copilot",
      "~/.github-copilot-cli",
      "~/.local/share/applications/com.github.githubapp.desktop",
      "~/.local/share/applications/github-handler.desktop",
      "~/.local/share/com.github.githubapp",
    ]
  end

  url "https://github.com/github/app/releases/download/v#{version}/GitHub-Copilot-#{os}-#{arch}.#{url_end}"
  name "GitHub Copilot"
  desc "Native client for GitHub Copilot"
  homepage "https://github.com/github/app"
end
