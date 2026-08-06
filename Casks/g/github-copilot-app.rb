cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.4"
  sha256 arm:          "107c6397dfe5b62e88d6d4c3147bce0bf9f658e26c8bda0193796539c83b496b",
         intel:        "e04f5880e608e5eeab9d3b1515388e88e9baf8baa151d8e4aa875fbcf2b0bffb",
         arm64_linux:  "993c165578d2758319294160bc9704ba8532869cd98ddaa30b0b7eda6c878ae7",
         x86_64_linux: "2729ce000ada71da339f71cd4a3f564dade4d5bfe438869c9cc15481fc6f33d0"

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
