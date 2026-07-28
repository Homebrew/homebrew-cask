cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.2"
  sha256 arm:          "526c6933ff1ca8b8edbf8008f8ab13c27e303a93b5fe30bd93da378c67ff53f7",
         intel:        "7ae2d5afffbb83020383d1f0c5f12fd354e749c87e893f7c46206a3110b36847",
         arm64_linux:  "ea8426b4c72850bf2e84486fa1cd788a7f312984bb201e95f20b8367fbc60bc7",
         x86_64_linux: "10a05b5e830629a5093c0d2cdfd5eec40b6b9750b38dcb435c76a87c35ec88ca"

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
