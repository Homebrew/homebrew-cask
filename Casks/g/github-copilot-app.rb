cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.14"
  sha256 arm:          "6af388486d2a7642dd9a6b17037ac07d798e9c2a9e52c681086cdf4645698bd4",
         intel:        "79c78fe2ea90f2df0ed171939c326c7d700c1209f51e63fa4a89fabf9e728b05",
         arm64_linux:  "9ef1c8dfa1b1757228c5a802b5e86fbd0691aeb3db2ee828e646417906c4db2b",
         x86_64_linux: "a9dbeb7b79385bd9823cccabb0252953fcd0f64820dece387dab9e03ee501c44"

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
