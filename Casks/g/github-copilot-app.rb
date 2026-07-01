cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.13"
  sha256 arm:          "bc0aded9ef9a5f194cb0f0a0d533fc43d14fb54c1d03fca97420fe9f0f5a2183",
         intel:        "50c52d33a22671eadcefa1b7bcff1dc00009c0bf5a6bd3b76003ef9ccdc108f7",
         arm64_linux:  "4f414b84a4567c116de2516ab5585c3f96e5d6780640c1af65e55436b20647d4",
         x86_64_linux: "61e5c9677fd227aa222bb10a67b93a1d8afa6d633e29313eb34f920d823528a0"

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
