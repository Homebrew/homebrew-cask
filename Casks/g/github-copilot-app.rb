cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.21"
  sha256 arm:          "b850add342a16b40002d7efbf73b0362b3cb34229a22c7120607c7e17004a358",
         intel:        "ae560d80170c041a9d460ade52216fe9eeca6a8ae448930d33596c290c2c2c46",
         arm64_linux:  "f2207e7a4699ca9c3c1e537e1c1589a69cf4c3870ca2e6edbd60eb45ff3397c0",
         x86_64_linux: "9d2e1c11916510a5b8db03dbf607b23cc3f521849ca499135808b57515924581"

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
