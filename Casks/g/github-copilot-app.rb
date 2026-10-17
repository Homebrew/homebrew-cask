cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.30"
  sha256 arm:          "b009046d25e1a77857dc1c476b5fe3fdbdb37cf97e6419429277b16c2dd9f532",
         intel:        "f2b10bd0dfb5fe6230656d9282d70fca597d67874788ad874bcf9d92435eac56",
         arm64_linux:  "7dc709a06be8472b018bdfe308830ddd77d1afd04e1ef6964b1066825e55aa44",
         x86_64_linux: "789c02b4e67ba972b9f0267237b1a62a8ed31f01354dd36d7298cf27d55246a9"

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
