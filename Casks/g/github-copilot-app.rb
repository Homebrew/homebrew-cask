cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.3"
  sha256 arm:          "73890a346463fdfc8e546ee6497dc4fb67d815296ea4da9bee64b365525bbbe5",
         intel:        "c8df0293d994524921556d6feec7fd1c218c9a579a948f46b54def5d8807848f",
         arm64_linux:  "0dff66c2b0eb97d200519f948e765e9f6c69da4b892a85f74f37553122e6769b",
         x86_64_linux: "fe8b26179806dc9938c5d6e6f2061a111033e9107fd7ca91a99ab29b75765c0d"

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
