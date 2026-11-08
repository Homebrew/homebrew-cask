cask "openchamber" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.7.0"
  sha256 arm:          "4fe4af4b736e978dd5dffe1b4e1eeabcbccd30a82d906cdf842861b1ad0042af",
         intel:        "fee6ffae4d6d2c05aec0b97548fbf6348e6ea23467c7a54b045c671d0e7f4adf",
         arm64_linux:  "ada8beefd8d69cabe2b2d35a00fbf853acdf86be88c19f97b6ac83eda9ad0b0c",
         x86_64_linux: "11a52bccbfbd00aa7b5a66ef48119df76b8cff259faee47499647a02c19bb401"

  on_macos do
    depends_on macos: :ventura

    app "OpenChamber.app"

    zap trash: [
      "~/.config/openchamber",
      "~/Library/Application Support/ai.opencode.openchamber",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.openchamber.desktop.sfl*",
      "~/Library/Application Support/OpenChamber",
      "~/Library/Caches/ai.opencode.openchamber",
      "~/Library/Logs/OpenChamber",
      "~/Library/Preferences/ai.opencode.openchamber.plist",
      "~/Library/Preferences/dev.openchamber.desktop.plist",
      "~/Library/Saved Application State/ai.opencode.openchamber.savedState",
      "~/Library/WebKit/ai.opencode.openchamber",
    ]
  end
  on_linux do
    app_image "OpenChamber-#{version}-#{os}-#{arch}.AppImage", target: "OpenChamber.AppImage"

    zap trash: [
      "~/.config/OpenChamber",
      "~/.config/openchamber",
    ]
  end

  url "https://github.com/openchamber/openchamber/releases/download/v#{version}/OpenChamber-#{version}-#{os}-#{arch}.#{url_end}"
  name "OpenChamber"
  desc "Desktop and web interface for OpenCode AI agent"
  homepage "https://openchamber.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
