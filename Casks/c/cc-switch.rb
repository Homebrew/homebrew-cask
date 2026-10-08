cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.5"
  sha256 arm:          "c85c1f643be8724c72d27b46e85c15a36e03e50354d1b7eb44f004d5627a2a60",
         intel:        "c85c1f643be8724c72d27b46e85c15a36e03e50354d1b7eb44f004d5627a2a60",
         arm64_linux:  "8974ea0de0e79eb24ccbcf8d39530553cf4d4cbf7345639f9f3762c58e9c06f0",
         x86_64_linux: "ea78f704b01c3d2bc8d99912d10289386eeeac822b315d584ed88ffa9b736a79"

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
