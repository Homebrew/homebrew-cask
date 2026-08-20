cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.11"
  sha256 arm:          "817269eb929ffc3e26f86dc14940c9c0f91d335771f02faf4ef78252d5a4517f",
         intel:        "e8c85d411ffa3723f6bc0b67be976d696e816d52d77ee2494eeddf1628098f66",
         arm64_linux:  "270d436313281dd7a1bf960d5e764b85898e5d3a9f1fad78d9c110c42890fce6",
         x86_64_linux: "ed906b66c3252c0578e6cf3e49179e07b159589a3a167758e47adecf9f760619"

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
