cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.20"
  sha256 arm:          "ccc18aa24e2a573ba23fa1385c41d5889dc62fc868e09429594cd3fa976091f3",
         intel:        "f3ce3fadf96ff354d075070cfcc53eed6781b7576a036a4fbe3fbdfc692cdb96",
         arm64_linux:  "da3ac87568e76640f5df11c812b035a70021709d337f474643a2beb0bf2530d5",
         x86_64_linux: "cfa91a8806a72884fd6d27807c5a440663ee809bcb46379a2b77ff7b41aa7d91"

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
