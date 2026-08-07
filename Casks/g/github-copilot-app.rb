cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.5"
  sha256 arm:          "2b7305552eeb8d51145d0d82b467c0d1c3bd07c70ddfa6bedd39d1e1d6f38eb7",
         intel:        "8d7a279584a589ebb1ea0303f7438d2a54a7543da3c047b674cf817f738cfea5",
         arm64_linux:  "ce612cd4b69e3e7ef5ca6fedd0c15de3ce8762f199f13a1db5e866b344720b58",
         x86_64_linux: "af0decd2af30e2dd469581d37688f63fe725cd1c3cb08ddeeb848ae8e1430eff"

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
