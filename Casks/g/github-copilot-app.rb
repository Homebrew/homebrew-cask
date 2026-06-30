cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.12"
  sha256 arm:          "8c6bcb889037d923d785ca462dacdd8698aef0bd408862500604db3122e34f8a",
         intel:        "7341b1e9fe83ba231c38553c040f8dddeba9951613c599efb7b6fd078bcb7b54",
         arm64_linux:  "78f76dd948b274897ee4dd7e1dd6d5cc095ff97d2f41961179e7d1a67dac9859",
         x86_64_linux: "211368377a4cc5709014f63776abf3f5a40bc23cad7ebe483041137b0c2dce7f"

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
