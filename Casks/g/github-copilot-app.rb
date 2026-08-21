cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.12"
  sha256 arm:          "f1c34c603aa03b2308c8caad66f28ecf15981d0ebeb4a9b195a8a6d59aa7df77",
         intel:        "3d5ab640bf924880ba18ad02e0369ae525de1fcae820543f71e01619ed9f2270",
         arm64_linux:  "3f1ab8787d7c584089024de10973d0607b813a84701958eb2cba1204f40d9b76",
         x86_64_linux: "5e3f0cfcad7b9ac61ea5e15a102ac508e5376fc083476e9402d22d543e69a606"

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
