cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.17"
  sha256 arm:          "afc1da2ffac9fc29f9ae7513562aae8368fc1b68005de2f7aa316d8e26022324",
         intel:        "27e951b403ff7889ef62a2b5197fb9e4185d4144a18d59b1f1a6101647e55f4c",
         arm64_linux:  "eb49b5d77cc8f8ba0ed8c1cf847536ef300766dedaabdba4b039fcdfc8d3cb15",
         x86_64_linux: "174f07d9ffee4f4c5ca7524c29168d13e1063942da9065cbf0afccc86a36349d"

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

  url "https://github.com/github/app/releases/download/v#{version}/GitHub-Copilot-#{os}-#{arch}.#{url_end}"
  name "GitHub Copilot"
  desc "Native client for GitHub Copilot"
  homepage "https://github.com/github/app"
end
