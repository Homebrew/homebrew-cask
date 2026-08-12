cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.8"
  sha256 arm:          "36cd39a18f2a453501b2db0bc72ca60c97bd7b164c32f2940bf3982de1b7963f",
         intel:        "73e7c15c949ae351a5ae1ffd664ffa2699337b568922332b8e451959bc2ab608",
         arm64_linux:  "a749f76321e8074fabe712c512f7e2a54902705f463c84e06d56b645c6835980",
         x86_64_linux: "04040c5ce6363647f5f06debf83cb137e7e2089b6f3c60a15259d770fc516934"

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
