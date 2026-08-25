cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.13"
  sha256 arm:          "db88fc6254ea130c180958de095bad74b1937c970863d6b1258d0085b708a7dc",
         intel:        "ffdc39a87a3c3931978c575e2aaab361dd2a46ae9e8b9a9a15b7bfa1c91d726a",
         arm64_linux:  "cfd97a6383e70cb6502db0ace432f2bcd19ccb0512ace958a77a318466cd5949",
         x86_64_linux: "955ac2688fc65eac7192f3b9b563b685e2b9c787a18281a99a79e3175c47b341"

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
