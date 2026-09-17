cask "bitwarden" do
  url_end = on_system_conditional macos: "universal.dmg", linux: "x86_64.AppImage"

  version "2026.9.0"
  sha256 arm:          "0a299e89599bb05368a19684f0c38921855f0b2010f3bcc6918ea47dfefe67d4",
         intel:        "0a299e89599bb05368a19684f0c38921855f0b2010f3bcc6918ea47dfefe67d4",
         x86_64_linux: "17621b6fa5e568baac955623b55fd6bb087c4766ceefbfbb94b68f2674a3dbf5"

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
