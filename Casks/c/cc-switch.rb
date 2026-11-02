cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.25"
  sha256 arm:          "79d45aa2134a2e6562265a9b5bd0ae8e2fd8be0e9296446196b0cb7587a464e2",
         intel:        "79d45aa2134a2e6562265a9b5bd0ae8e2fd8be0e9296446196b0cb7587a464e2",
         arm64_linux:  "00708aad72386f436d39a38e597cc7fcbeb0dbbc92dec7743935d64e4e12de93",
         x86_64_linux: "6b16016537008d601eb40949c7595419d8da85855f43267a73336ae0c044ebac"

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
