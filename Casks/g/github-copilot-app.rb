cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.1.0"
  sha256 arm:          "a1eee598dd288973c1447bb7b78b042ae63be3d7c254dca233a6b3091f852ede",
         intel:        "70c5b30c1286ebaffdd0cba7f786a836bf8e4c824a50f4dbb4561cfd84347bf4",
         arm64_linux:  "7697aef4c0e2afb6c08fbded725772d3063a02215b50df8ab247999153d9837a",
         x86_64_linux: "612a3e452a75d9409c763396081f5c4c219eb6faf76bbfaef8b863c07def0857"

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
