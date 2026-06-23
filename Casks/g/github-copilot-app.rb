cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.5"
  sha256 arm:          "468cb6af98c6e392a00c827a26180a26652e12bc00368082624ad7782c5a341f",
         intel:        "43e90db064fbf99251ae503ad7e23d8367960c144b457127eca321dd7bac931b",
         arm64_linux:  "ef4c05ad68982887081d09e7e767eed15122c330e70a9b3392d1776e57ba89a0",
         x86_64_linux: "bbb4c91e601a81baa070eeb39438ae6edc5333e2e1b9a4c3f8759cac7d763cac"

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
