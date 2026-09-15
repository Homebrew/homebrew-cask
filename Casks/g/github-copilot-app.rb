cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.21"
  sha256 arm:          "24c4badd160d04fb762168d3ba5cb004d43fa1a04eab6bf148b41830147489f0",
         intel:        "d4e28c593f247b4564dfe58804fd924d17f7319a85516cc41f2c0fe7396bd665",
         arm64_linux:  "12b96cba7ad8957ec6e7e7a89deed60f590bfad8c8e2c9c4a6c10b8f21a18800",
         x86_64_linux: "42781aef8ba71e84f4af5f08e9956c3f614a827ab834505bfe44919904d058fa"

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
