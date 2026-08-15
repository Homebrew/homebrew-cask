cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.10"
  sha256 arm:          "7cde14aabe4624e876bd0ff4d4d75b87789412f501e33924343c78071f1ff893",
         intel:        "2e985ed5335d6b8d62b30478d816d1e0c72ab3bc2ef5152a6d8105550e22886d",
         arm64_linux:  "04c590bea699af34c6d6724bc905155d69b63b0be17cddaa6d1a0095777b54d1",
         x86_64_linux: "d8d192cf0c7df529139eaa5f3b9fd7aae1828ac4e561d070124662bfb1e65de9"

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
