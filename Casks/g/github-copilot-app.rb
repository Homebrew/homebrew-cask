cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.25"
  sha256 arm:          "7cbdc658221bc4e1f83c57079d976cd95fa62cc97f9d94d3fd0bd0bb10a64618",
         intel:        "4c9acfdbad250802b39d35ea681698bcf56b0f46095bdb6a44cd2eefca46924d",
         arm64_linux:  "34798994909ac2307c0e830f32cd45c891c362a437d9a9ed3749c4d3f1f773c2",
         x86_64_linux: "cfa9ecc6887957eb50a2233fa516d57f5363aa753e6e1d4293ccab225ffb34d8"

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
