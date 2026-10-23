cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.19"
  sha256 arm:          "ca9678d9dd08726f95011dd801d7a56d76d27e63f74913eb95d980cdb1fb85cb",
         intel:        "ca9678d9dd08726f95011dd801d7a56d76d27e63f74913eb95d980cdb1fb85cb",
         arm64_linux:  "afdf0e68ede1a2ed9b080c75140266741a8edcaf6cf2fa6de8a4dafb54f06eb7",
         x86_64_linux: "f667c6b2419628b7ff2053e03f893df22338541659c4d66fc78e3b7c10bfce16"

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
