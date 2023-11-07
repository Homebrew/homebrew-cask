cask "bitwarden" do
  version "2023.10.1"
  sha256 "2e0543eef480abbbc26ab2d0d79ba615afd355e05d9d772c16f947e6a7b0ef5c"

  url "https://github.com/bitwarden/clients/releases/download/desktop-v#{version}/Bitwarden-#{version}-universal.dmg",
      verified: "github.com/bitwarden/clients/"
  name "Bitwarden"
  desc "Desktop password and login vault"
  homepage "https://bitwarden.com/"

  livecheck do
    url "https://vault.bitwarden.com/download/?app=desktop&platform=macos&variant=dmg"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
