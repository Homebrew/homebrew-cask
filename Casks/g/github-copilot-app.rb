cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.11"
  sha256 arm:          "170cc29c5e3f7ceaa5d53ed0ecb5a05bb48a76fa788ac5ee4ca6d7cdba788f59",
         intel:        "b6a3d96ec168f0fa56d2ddbf1b5caa5e40adab2286e5bbf49445051dd3b41838",
         arm64_linux:  "54982996aed5e7515585606f24a7ded1997941b2016a9c5754421647a2ec740b",
         x86_64_linux: "e2d470ef08c827b7ab93ad00e6e505305174a53bf84d84b66de029287d909286"

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
