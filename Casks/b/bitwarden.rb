cask "bitwarden" do
  url_end = on_system_conditional macos: "universal.dmg", linux: "x86_64.AppImage"

  version "2026.10.4"
  sha256 arm:          "76de728cb2f4cd9640c0384c1e45fec2c6d4536aa37c60de50391bcfe9ca1102",
         intel:        "76de728cb2f4cd9640c0384c1e45fec2c6d4536aa37c60de50391bcfe9ca1102",
         x86_64_linux: "f7ebebf69b6344812dc55d9536187585de7052da55f39c24374347d8887b4057"

  on_macos do
    depends_on macos: :monterey

    app "Bitwarden.app"

    uninstall quit: [
      "com.bitwarden.desktop",
      "com.bitwarden.desktop.helper",
    ]

    zap trash: [
      "~/Library/Application Scripts/com.bitwarden.desktop.autofill-extension",
      "~/Library/Application Scripts/LTZ2PFU5D6.com.bitwarden.desktop",
      "~/Library/Application Support/Bitwarden",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bitwarden.desktop.sfl*",
      "~/Library/Caches/com.bitwarden.desktop",
      "~/Library/Caches/com.bitwarden.desktop.ShipIt",
      "~/Library/Containers/com.bitwarden.desktop.autofill-extension",
      "~/Library/Group Containers/LTZ2PFU5D6.com.bitwarden.desktop",
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

    zap trash: [
      "~/.cache/bitwarden-updater",
      "~/.cache/com.bitwarden.desktop",
      "~/.config/autostart/bitwarden.desktop",
      "~/.config/Bitwarden",
    ]
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
