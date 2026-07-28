cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.1.1"
  sha256 arm:          "97f819f6442ce0d20e94abb040b5f596516e2499716eae3b5acd6a552d388bfd",
         intel:        "ec9983b20add8f16a124c42a318b6149f7f56988113fef025f9b0dbfdd28a6fd",
         arm64_linux:  "70e92b48e2bfeb8601487c5c48c6fa43159e6fb39043b1fc7888a0799dcbb6d4",
         x86_64_linux: "cb5d26f470095561c97a1cc8d7d35fdaf84fa3b20b04259f4176e1224f4bed8a"

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
