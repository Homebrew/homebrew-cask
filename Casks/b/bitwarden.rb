cask "bitwarden" do
  url_end = on_system_conditional macos: "universal.dmg", linux: "x86_64.AppImage"

  version "2026.11.0"
  sha256 arm:          "c6d90fe5054874736fb0b59967340f3b911e60cfd502b82d9196c50568bf2bd3",
         intel:        "c6d90fe5054874736fb0b59967340f3b911e60cfd502b82d9196c50568bf2bd3",
         x86_64_linux: "0b885d6aed20cc2a3ea017d93e1a911f2ff9b42073e541009fd81cd6bb367c4b"

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

    app_image "bit-Bitwarden-#{version}-x86_64.AppImage", target: "Bitwarden.AppImage"

    zap trash: [
      "~/.cache/bitwarden-updater",
      "~/.cache/com.bitwarden.desktop",
      "~/.config/autostart/bitwarden.desktop",
      "~/.config/Bitwarden",
    ]
  end

  url "https://github.com/bitwarden/clients/releases/download/desktop-v#{version}/bit-Bitwarden-#{version}-#{url_end}"
  name "Bitwarden"
  desc "Desktop password and login vault"
  homepage "https://bitwarden.com/"

  livecheck do
    url "https://vault.bitwarden.com/download/?app=desktop&platform=macos&variant=dmg"
    strategy :header_match
  end

  auto_updates true
end
