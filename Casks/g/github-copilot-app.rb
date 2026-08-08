cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.6"
  sha256 arm:          "4d219523d1d04e11d292ef92532f719386cf5e6037e7a88afe3f92fab550c999",
         intel:        "8b70bd115196ea2a3e529c16b683b85c9e2a436a13a0108c01b4466cc380a7a6",
         arm64_linux:  "581f37473afaafb24c415f35fd0794f329e9171328733bd2774d2aefde306829",
         x86_64_linux: "c2f539aa440623f85caa492e04f8e553d693b85f259cb92136928ab0b2fe6cd0"

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
