cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.24"
  sha256 arm:          "82991a379c5a9c4b0a64c6dc636ff65f03e44bab6449d02ff47d39ba01f1ec56",
         intel:        "3409539b4c525a86988104fae1bfdabcc2bf2490df64469fb33eec3be0e652e3",
         arm64_linux:  "76a0bc4c7d2e79f5b4100ab596f246aaf8edd7d655cd5ae970fe9e81e1fe4e57",
         x86_64_linux: "9b2981a6fda0289240f24bb9afdb9a4a36178bab542cbd320dc7101067a26590"

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
