cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.22"
  sha256 arm:          "e4896f507c5f4e610fc8ea7bc154dc0ec10cf2ff24f666086657dd383f43755e",
         intel:        "e52708691726e90e8ece74654bdf2b23addbcd0babc376bfeb4d56828974cbc5",
         arm64_linux:  "0f3d174c69d04471bb0b30239b703febe578e0813fd0bdadc22e88425df3135e",
         x86_64_linux: "05e4a9e018b61d24797b7dd27a6975667400f8cc9b6cca25130f9e8fd73d641e"

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
