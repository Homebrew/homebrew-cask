cask "bitwarden" do
  url_end = on_system_conditional macos: "universal.dmg", linux: "x86_64.AppImage"

  version "2026.9.1"
  sha256 arm:          "eb6c81dee0f217706faf8da7a120e543116ef1f7e7f23a0e1194a87294406f07",
         intel:        "eb6c81dee0f217706faf8da7a120e543116ef1f7e7f23a0e1194a87294406f07",
         x86_64_linux: "ac35c048d9c8425d0714c7ffc60a60efc87eb3594555b8a923b7438a72479549"

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
