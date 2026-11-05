cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.26"
  sha256 arm:          "da8efc3b3604e57218a2a3ab2a94d29f05623cfc26a3b551f3ad90e8e06b604f",
         intel:        "da8efc3b3604e57218a2a3ab2a94d29f05623cfc26a3b551f3ad90e8e06b604f",
         arm64_linux:  "faf0810362aa7ca6e3bb913b2843de9433a124d79fc2a67225ea2d96fa21aa1e",
         x86_64_linux: "122fd96f3e5eb820b713742a8a92490965eb6485956d8d1c1d63905100b6e5d1"

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
