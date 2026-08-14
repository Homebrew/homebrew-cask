cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.9"
  sha256 arm:          "1cb342f60e14e32a4280f9bab62fe67549275e122a6a9558052039db6a2e9b79",
         intel:        "ff6e965f5acb02868118b133336cabfa4c2a75178194d990753327ef6e2caae2",
         arm64_linux:  "24060de2d72d71ffa0724293836f3201aee169ab6a14036c6edd59d78297bc62",
         x86_64_linux: "9921f30fe6e9f63c0ebc9fb0642cab08bf3e19dacbbe3ad62acacb301021ba64"

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
