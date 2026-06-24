cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.7"
  sha256 arm:          "eacedd3e87e883af46d850badb6d186d91ca5a99120a0424a7b5b5795f00044e",
         intel:        "312c331dc97ca54891c9a223e7a66bbe0910cd78a1c43e18267bbe4a9585d7ed",
         arm64_linux:  "3a952dde9fbbebd73988d5fc81c5672df755ec5eded52416f59ba464812ad9e6",
         x86_64_linux: "e4b9f95e8cfa9d6af230505b570720f85048c32a9f6c61ab89c93ea9676eb99c"

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
