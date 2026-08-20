cask "bitwarden" do
  url_end = on_system_conditional macos: "universal.dmg", linux: "x86_64.AppImage"

  version "2026.8.0"

  on_macos do
    sha256 "8180ae4bbb2c4686e19ebab897eb661bc4fffbfa3992779d4fb3d2251609f7d1"

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
    sha256 "39fa0e8ea86369286b5062e23e362dd884b104448ba09a484ef58a3d37af4dfa"

    depends_on arch: :x86_64

    app_image "Bitwarden-#{version}-x86_64.AppImage", target: "Bitwarden.AppImage"
  end

  url "https://github.com/bitwarden/clients/releases/download/desktop-v#{version}/Bitwarden-#{version}-#{url_end}",
      verified: "github.com/bitwarden/clients/"
  name "Bitwarden"
  desc "Desktop password and login vault"
  homepage "https://bitwarden.com/"

  livecheck do
    url "https://vault.bitwarden.com/download/?app=desktop&platform=macos&variant=dmg"
    strategy :header_match
  end

  auto_updates true
end
