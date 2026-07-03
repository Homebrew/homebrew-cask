cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.15"
  sha256 arm:          "b1b288b03dd28c9478b109f7128212ce3ea221edddc0f5a10c4e45612da92cb7",
         intel:        "9a85f04b61749c321a6fdcb4bc12dad78f29ec60148f5e2dcca42493d688e822",
         arm64_linux:  "aedc1b5f6031dbd7082731abd0b7d5afa00ad83191723399f05ba6405c6fc244",
         x86_64_linux: "753cca755d9e55685278079858d273f82d90b4fdef545d998d2498373521d171"

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
