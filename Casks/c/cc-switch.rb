cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.9"
  sha256 arm:          "98e5a1743a18be87d04d5eb87e4e0d18a3a9fe03a476ee39a909ac8f1acc8bbb",
         intel:        "98e5a1743a18be87d04d5eb87e4e0d18a3a9fe03a476ee39a909ac8f1acc8bbb",
         arm64_linux:  "5354f83b15b43b5115d89d11fec9612fd48b8b0e57866d5e81352f86cfc9c9e4",
         x86_64_linux: "2d3d882ffc80d720d293a8ceeb89bead8f04d469776dffa3c716e943b3337f27"

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
