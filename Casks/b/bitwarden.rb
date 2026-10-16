cask "bitwarden" do
  url_end = on_system_conditional macos: "universal.dmg", linux: "x86_64.AppImage"

  version "2026.10.0"
  sha256 arm:          "24920c56d9464ad3de6e50eb78399641cf79eb006eb3f46885a49f85632cb96a",
         intel:        "24920c56d9464ad3de6e50eb78399641cf79eb006eb3f46885a49f85632cb96a",
         x86_64_linux: "1b2d2a56399df0a5de8b51696ca0dcf8a8b26786ffe836bc28d85ddb3fff795f"

  on_macos do
    depends_on macos: :monterey

    app "Bitwarden.app"

    uninstall quit: [
      "com.bitwarden.desktop",
      "com.bitwarden.desktop.helper",
    ]

    zap trash: [
      "~/Library/Application Support/Bitwarden",
      "~/Library/Caches/com.bitwarden.desktop",
      "~/Library/Caches/com.bitwarden.desktop.ShipIt",
      "~/Library/Logs/Bitwarden",
      "~/Library/Preferences/ByHost/com.bitwarden.desktop.ShipIt.*.plist",
      "~/Library/Preferences/com.bitwarden.desktop.helper.plist",
      "~/Library/Preferences/com.bitwarden.desktop.plist",
      "~/Library/Saved Application State/com.bitwarden.desktop.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Bitwarden-#{version}-x86_64.AppImage", target: "Bitwarden.AppImage"
  end

  url "https://github.com/bitwarden/clients/releases/download/desktop-v#{version}/Bitwarden-#{version}-#{url_end}"
  name "Bitwarden"
  desc "Desktop password and login vault"
  homepage "https://bitwarden.com/"

  livecheck do
    url "https://vault.bitwarden.com/download/?app=desktop&platform=macos&variant=dmg"
    strategy :header_match
  end

  auto_updates true
end
