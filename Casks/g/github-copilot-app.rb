cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.2.0"
  sha256 arm:          "701e0cb4908774cdeabb981d83fcf1153ae997c63c4db1a06796cfefc6af948d",
         intel:        "a783ff6cdb7e81e86c68693d0e1bd1d294c85f3940126cdead54ab6d74687ba9",
         arm64_linux:  "d65220cbb116cfebd5387fd1b8a9a61fe04d9783d11094bf6965b1d337e9849f",
         x86_64_linux: "178305d715149a005e95b2f849576e86af021edf129611bf82ebb2aa885d5877"

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
