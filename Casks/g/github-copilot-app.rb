cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.24"
  sha256 arm:          "fc9d2f76870f878284d6d10524d3d44322c9d9e1042afc8707eac8013d77c63f",
         intel:        "14fc5a9bd3f5bd34d07d4b2ed5d792473bbe4fd16ee08598406a20c247b92101",
         arm64_linux:  "57c543143eab0230a69d38f9b847601dc1fa667bc4a6de61ddb02c0b35dce635",
         x86_64_linux: "2182db94660c51fc53c8eec02976b7e735a514fc3830e1032416e8943ee9190e"

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
