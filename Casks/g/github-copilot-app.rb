cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.6"
  sha256 arm:          "acb2ef88d146b10ce4551d2a8ea41a9430e57c3dc8d1721d77971416099bf1d5",
         intel:        "91320033d4e3252144afb93bff21a143d361cb627dc6cea5bdcdf4698d3de186",
         arm64_linux:  "312baf3d616af58f8f9103936c354a2cfc23087cec8da0f0cc9b0ca2318983c4",
         x86_64_linux: "5bef35c89156f8f0a9a9e026b5a67259a74f5ce7c2e4b5c87446a30bb8c0008b"

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
