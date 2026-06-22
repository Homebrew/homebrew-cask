cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.4"
  sha256 arm:          "c09e092342bc6c17e422eb4478fe263749767126be9eb53003f9c8f96d8e6ace",
         intel:        "43c127d2226d6020aa99059698cba1c1357f54c7ff3470e2d1ae6dd072187f09",
         arm64_linux:  "2304b870f391cba478ac233b77fd0fc9829aa86618144e4f3f26486962e99128",
         x86_64_linux: "6120bcbd928377c5e1d1e046bf01829eea60cf48c5f0f2fe70e614bcea90fcaa"

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
