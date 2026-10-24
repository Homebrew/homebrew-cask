cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.20"
  sha256 arm:          "51e1db3fbb171e0f5220ac562b3949b269f9900f944e882ef21d76b1369103f2",
         intel:        "51e1db3fbb171e0f5220ac562b3949b269f9900f944e882ef21d76b1369103f2",
         arm64_linux:  "f656108dcb7fc5e9f72be2fdf6614632e1d2096c55817fb281290a1de41143da",
         x86_64_linux: "e993bdadc66e3e7053a4c7b83e882cd3caef4ecf9761205a33917f68a0f26a19"

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
