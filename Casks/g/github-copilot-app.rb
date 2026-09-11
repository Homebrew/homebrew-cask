cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.18"
  sha256 arm:          "4fd7966a8d2b3176888a0bf78099a49f937cd13fc24979b1061d08755eb50c71",
         intel:        "96125777e7b90c2651049fe0fa66cc3d9ac6e1b176d3ee6855ed06e01c7a3c83",
         arm64_linux:  "04444b7ebbfa9d1a04962d4ccda70f40f2a76b1b15fee77843997d3dc9929b6f",
         x86_64_linux: "a4f61cbbd9f187a4475c14f975f9e03d7ff0d0d3955e5420b5bcea3918e2c0df"

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
