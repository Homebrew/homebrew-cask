cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.13"
  sha256 arm:          "2058af5593032ad94c6fc81e0a7aa5bc0f9fa4454f10bcd3be19b41cefce63f1",
         intel:        "2058af5593032ad94c6fc81e0a7aa5bc0f9fa4454f10bcd3be19b41cefce63f1",
         arm64_linux:  "8999dd29e2dcb9b8a5df6d61878bd9f4fdea08f5c105c78091384d892c8c0042",
         x86_64_linux: "8d8afc65aa8697127a0aeb4e55608900f95a8f8ea68f929bdc369db821e36fd9"

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
