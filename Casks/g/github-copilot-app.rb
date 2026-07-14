cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.22"
  sha256 arm:          "ed1bb1e1989362636a8453b94e2cfae651061fc2e5e20bf12c7d91dcb68d44a8",
         intel:        "651e223954f8ed39aae3c98a7ee5a9a52c92ceb4e63e1440a5e6c12a112f4e88",
         arm64_linux:  "d6e1cdb5c9c3a16b3752a94f6940b402e1ad77b1c00a82fd8cb2f51e4435dd81",
         x86_64_linux: "1e0b2f0f2e6722ed9b3c581247bbcfc9f3babc76f756cea7a48da16ccc4d440b"

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
