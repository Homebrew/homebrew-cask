cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.15"
  sha256 arm:          "490bf73b36ea9aeb6f6ca9018577c7c7fc82f2700a4724de86a14e73331bffd2",
         intel:        "008500d3d1a8f080419133ab7d76e0d18660d15b221c15f613cc7adcb7b6326a",
         arm64_linux:  "0d02335a7accea8e2f2faf0a6ab76f2ed9f0ed217793f900ed36ae110342f33a",
         x86_64_linux: "2f41db0a46b3c1d75d307bb47109440f4aa5faaf7f1b95df9f679ccbc35e2809"

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
