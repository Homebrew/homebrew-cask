cask "openchamber" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.5.2"
  sha256 arm:          "6da9e5e306f00e5b381d72849f0096ef59d9521ed0d591bdf4ab28ea5b690872",
         intel:        "7d186f5ec78da66499b8d74c88a23b6bca172ab21c15d2f7ec85ab63ea6c5bf8",
         arm64_linux:  "0dfbf954799b732adb345b79510e0f5ee3ea20dff6b5633aa770f205fd7d86e4",
         x86_64_linux: "e9580f2a8e5cb67e69a4246d163bb09c7f2f2858504bd7086d4fa206554a5878"

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
