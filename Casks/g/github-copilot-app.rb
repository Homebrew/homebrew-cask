cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.3.0"
  sha256 arm:          "51e54e40cbd37038470869537dfa149b08f97a6cbeac784c6a9a89ba64eb05d1",
         intel:        "53ec300b357d57a78ff6778197fb8ab8c9830f16df516c555cef72c2946df6d5",
         arm64_linux:  "cdec5b574356ab282e9facf15546f18fcceefabfcd1096359a80d29003fec6a2",
         x86_64_linux: "0bd9b2b2a21864d0851e008e4aeda0573b3c657d41543eef77ddac03180b3f51"

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
