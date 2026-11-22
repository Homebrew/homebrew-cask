cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.39"
  sha256 arm:          "c8ef99433ecd1f4f7f8010f31bb5a68ad8e95821aed4f31b68a74765fcfa9f54",
         intel:        "c8ef99433ecd1f4f7f8010f31bb5a68ad8e95821aed4f31b68a74765fcfa9f54",
         arm64_linux:  "b885c1c272d796951368d8286ec797e67dfc224624177462281c4efccf5d86fd",
         x86_64_linux: "a9a06b904582b3fbc6a2ab5319ac37b43cdab13b225928265ce2c2590c0ee65a"

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
