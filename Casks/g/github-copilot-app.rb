cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.19"
  sha256 arm:          "4b31018180318d205a241a41a9a6809f501b41a69665c7b42b04571c85b27ff0",
         intel:        "70306f5a2c78bee24a0467cbf85c65cbbe14dafec83a9c48ecd7711982629c7d",
         arm64_linux:  "161ea92795b08ddd5a1445a878c8a8e96b4ddd3239ea025b1d31cb27a2e1e613",
         x86_64_linux: "8fffa873563eb2b4cd3adedd852d38c29eba0951ec0d4096f908da91ed40937f"

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
