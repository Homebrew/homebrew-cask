cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.23"
  sha256 arm:          "7fb42f906a6e0cc8b10591780c92b22bdce66a28392e018ea9c372b9ca9900bc",
         intel:        "a7c8db0cc85f8f5cb11e95003c9d2b608d559e0b4de26d777597505632448e88",
         arm64_linux:  "9cf81b98ece3f5b63334cd5195fec087c9c80444937ef229709ccf0b4ed1ab03",
         x86_64_linux: "e5bf2984608f9ce9cc3b7521fec6e0d91ce61d753ba7362f519e5ebc4eb35999"

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
