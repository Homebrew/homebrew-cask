cask "bitwarden" do
  url_end = on_system_conditional macos: "universal.dmg", linux: "x86_64.AppImage"

  version "2026.10.3"
  sha256 arm:          "eca6581226788c39eeff962b09dc64203a87068512bb2ab4f5050e45f6a75972",
         intel:        "eca6581226788c39eeff962b09dc64203a87068512bb2ab4f5050e45f6a75972",
         x86_64_linux: "ffc0e0376cc80344b8e2cfc92cc3cf46ed1cf49ce0bfeb6783573000434d6562"

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
