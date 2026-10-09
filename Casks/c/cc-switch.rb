cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.6"
  sha256 arm:          "e00344b0f1adbbd8275d1b81ec8b27cc5b2bec7e8207488530eb303a0d5e6ccd",
         intel:        "e00344b0f1adbbd8275d1b81ec8b27cc5b2bec7e8207488530eb303a0d5e6ccd",
         arm64_linux:  "0d1be0b1cf943adc03b1ac9f626b9ae3e45f25f088ba42016655348f73fa8583",
         x86_64_linux: "5a3881fec4f7b1cb665e49528978e588a87542b9ed1c9caf82b5386693565d65"

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
