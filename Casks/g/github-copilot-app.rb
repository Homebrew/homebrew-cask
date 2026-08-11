cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.7"
  sha256 arm:          "1beb0061ba7792dd97824d0d275670064753b15608ce83515ea27c5726297ef1",
         intel:        "a3c80c1f0b3b0aea96b96b510c9034a3d69ffc8cd27e013e50f5fbd3198c9fc6",
         arm64_linux:  "b2a1da5dbeda79363b4185ffe1afe5fceaff6bcf2200315d18020e3ba6b1a80e",
         x86_64_linux: "c2527724489c3afd437ca55655cbf8b35bc87a4e9b7f39735c11da5132bbb1dc"

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
