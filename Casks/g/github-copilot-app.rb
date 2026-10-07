cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.27"
  sha256 arm:          "5a04b8b5b576562dee11f9f7df32cbbb076a03c6b20cc7d0c7fb2e043982e2f5",
         intel:        "90e838280465f81eecfb59a0d65d8e5be0a8e9a3fcbd44205626412a9be9083e",
         arm64_linux:  "f1d536a8fc4e08718878c9d7b2cfe7e52b512cfa3565219dded31ce214069e54",
         x86_64_linux: "b8e63b2c5caeebc7a93564c28a6f9fb3394576cae4a6603bcfa6fde5323a9479"

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
