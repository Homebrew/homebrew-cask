cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.26"
  sha256 arm:          "40e5a9607acf5b774f5f480bc475dd2dc76a79cc28db52592bbb28d9d114fe96",
         intel:        "f6946445d3eac1ffe1d1c28c97bb2298715ac04d7f455a9d3f2028eb79b2f1bf",
         arm64_linux:  "934e5e9926fe4013597fcfb002d3a5f8e7a1278235c51cc0b9109aacf344e4dc",
         x86_64_linux: "44c6b60b0eabded69c8b446b8c19a40e1edd22fec7541d1ee40ff9c3f01275a5"

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
