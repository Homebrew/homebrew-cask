cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.25"
  sha256 arm:          "3b62c888f501812813157151b41bf42d57d4fb7776ae7eea7ffb3ed8d63f6120",
         intel:        "6f858a8416afbbfd57677e37170efbe9fe1e076901754074dad543dc22f9a7c4",
         arm64_linux:  "88d3e626175c771d5d7ba4ab6a75e6f0e6bd5b3321440dd144c445b30af7f923",
         x86_64_linux: "27b8f29ea20725847bad5a6926227c5ae1b824249fab5133cca5ccad34c53b04"

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
