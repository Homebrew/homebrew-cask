cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.10"
  sha256 arm:          "21d883dc2bf7bc8da954e26264c801288315a0875d3356f2c39b1ea83e3df3c0",
         intel:        "a324149ce5ac03612d2a4906870b78e6332796a9ceb03636ff8ecb8aefa7e305",
         arm64_linux:  "317a45e1dd2601825710b442df2cabfa521ef12fc66936f5cd95c5c3449a1fc5",
         x86_64_linux: "54eb711ac223f26fd0060888daba30a1879405b6e5e8ab3f951171ad429d0089"

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
