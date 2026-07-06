cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.16"
  sha256 arm:          "5220899a322fa566065def28086d3c7bc735b1102ada94983a253826e66ac561",
         intel:        "62279189ec1ee86049682aa9997ff2465bf81a5e37cbc427253fb7690f5f473c",
         arm64_linux:  "c3e8410e4d84e1bc004e0a1615f0b582adfbdc7abcc08e382644c83b5d35ee4b",
         x86_64_linux: "e863c9e81da5a412cd21366981a009b6edb274fa20a8fdadb9c27df84a075fc2"

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
