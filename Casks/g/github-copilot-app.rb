cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.16"
  sha256 arm:          "dd2ab44630f4ffc9ed8b87a4824e33ddba9c6fc9c31d6cd8a60f000b393d982c",
         intel:        "681b3a69414bc5945e440f2519082fb87f62db19700261e6e7108f14507ac77a",
         arm64_linux:  "b11aa39a1a4cfff7ca086c4f01b33c9f894dd98c29fe13f0ce58307531f8dc90",
         x86_64_linux: "e53f4043a705f9e1bad8f9ecd34eeab1aa2b369396d062cb4b537359e95154da"

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
