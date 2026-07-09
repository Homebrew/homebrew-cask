cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.18"
  sha256 arm:          "b2bf9ad7522070621cff6e1130b29eaf875e21787957c8d97ed5fe792f0d0824",
         intel:        "e397cf0b132d6002733e2714f54dde7f5cc1576684ca1dcc6da6e007ed7ff647",
         arm64_linux:  "920724d6fab514b2a64fe128ba2d9a304bc490914cdf8a7267778c97e2827b34",
         x86_64_linux: "51295e60773357db5e3e7d467601148212d186fa736b43c2fc05ed9439afd458"

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
