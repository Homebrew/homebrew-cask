cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.9"
  sha256 arm:          "37df96523fe2d45d33738f6062fe5a3c020a860c323f4b06901a29f827843ad1",
         intel:        "4f234f4b99197efbf55d59a8b9381298c971effc169efef2a4d09799809ede16",
         arm64_linux:  "92a70c8937faa74108ac8d0874381e09c715156a681c744e93238564cef36e39",
         x86_64_linux: "35d8761616e6c6fdeb4daa0d32dcc73579badfbe1a0719569d689ee433a3e34b"

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
