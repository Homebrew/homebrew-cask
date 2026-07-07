cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.17"
  sha256 arm:          "dff4431eaca3f41598a81dd11405ebff57c37ae176f06b489f441d54e784ff46",
         intel:        "edf99985daf32e263e3232f7cce79e0fa0fafed803574a8d78db47ee89b6ab18",
         arm64_linux:  "78c93db1b2aafa285f7ff9dce4becc22fbb407cebbb675c3c2a86d454de0d2ca",
         x86_64_linux: "efbf4e5c754b108ca5fd20206cfdc09d7361452bb46628f876a1e8ed414b67b0"

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
