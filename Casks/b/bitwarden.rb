cask "bitwarden" do
  url_end = on_system_conditional macos: "universal.dmg", linux: "x86_64.AppImage"

  version "2026.10.1"
  sha256 arm:          "fddc07cd2d97aae9831eefc7586d98913c0773e6f60f5589ba140c44b49e768c",
         intel:        "fddc07cd2d97aae9831eefc7586d98913c0773e6f60f5589ba140c44b49e768c",
         x86_64_linux: "bc6f918d4a1a99d004215dd824b3b7c031c4102f68074090431010d84439bc23"

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
