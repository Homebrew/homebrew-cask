cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.38"
  sha256 arm:          "940a6bd07ad472f101b68ee788ece5eac94782f10ee37212d96eae98f87e18a2",
         intel:        "940a6bd07ad472f101b68ee788ece5eac94782f10ee37212d96eae98f87e18a2",
         arm64_linux:  "d3a4d87c5c26f6dd897d55dcd82d517ab25a4edfb92661eb78a5899cac5a8333",
         x86_64_linux: "7cb9b8e146659bd44541df66a52d64ecdb81a0466f359ce244f3f4b1993d9328"

  on_macos do
    depends_on macos: :monterey

    app "CC Switch.app"

    zap trash: [
      "~/.cc-switch",
      "~/Library/Application Support/com.ccswitch.desktop",
      "~/Library/Caches/com.ccswitch.desktop",
      "~/Library/Preferences/com.ccswitch.desktop.plist",
      "~/Library/Saved Application State/com.ccswitch.desktop.savedState",
      "~/Library/WebKit/com.ccswitch.desktop",
    ]
  end
  on_linux do
    app_image "CC-Switch-v#{version}-Linux-#{arch}.AppImage", target: "CC Switch.AppImage"

    zap trash: [
      "~/.cache/com.ccswitch.desktop",
      "~/.cc-switch",
      "~/.local/share/applications/cc-switch-handler.desktop",
      "~/.local/share/com.ccswitch.desktop",
    ]
  end

  url "https://github.com/farion1231/cc-switch/releases/download/v#{version}/CC-Switch-v#{version}-#{url_end}"
  name "CC Switch"
  desc "Configuration manager for AI coding agents"
  homepage "https://github.com/farion1231/cc-switch"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
