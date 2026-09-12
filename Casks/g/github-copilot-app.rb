cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.20"
  sha256 arm:          "0ab1f78e92a967bbe2cc30309599506b95f2399d82d3e705c0de73ca6c2314a3",
         intel:        "98b87be23df80dd32b71e162df94ede765c44c38bf590c72ca9f7fec14a816fb",
         arm64_linux:  "4adef3b87ee330f82a4a4508ed0937eb0ca17639cbb38cc570a49f49ad6df973",
         x86_64_linux: "f2928f7289b2afdd5614607dd4a64a9d4009fda1a5fe423415963b76a23a3ab5"

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
