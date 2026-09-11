cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.19"
  sha256 arm:          "fe711df245468db1e103c56f8fccf39221757f3154333882a552b551fdba15c9",
         intel:        "6aa3145b38a9451b1089806f25c910755c479b4856fc13048910e77b89df2d36",
         arm64_linux:  "e7374627e8ffdfb16999241f706fc2ef3005da3e63e37b32a1578801a3bd4391",
         x86_64_linux: "68f6e3636b9fc1e346ed52b4e295dfabe26877e5535a1b729f053a518a8d0e62"

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
