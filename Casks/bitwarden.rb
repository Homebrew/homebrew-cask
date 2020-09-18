cask "bitwarden" do
  version "1.22.1"
  sha256 "ea4cd4e0364c913f0168b9174121b0ff683d296697fd3df88a55de0f74e0f4b3"

  # github.com/bitwarden/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/bitwarden/desktop/releases/download/v#{version}/Bitwarden-#{version}-mac.zip"
  appcast "https://github.com/bitwarden/desktop/releases.atom"
  name "Bitwarden"
  desc "Desktop password and login vault"
  homepage "https://bitwarden.com/"

  auto_updates true

  app "Bitwarden.app"

  uninstall quit: [
    "com.bitwarden.desktop",
    "com.bitwarden.desktop.helper",
  ]

  zap trash: [
    "~/Library/Logs/Bitwarden",
    "~/Library/Application Support/Bitwarden",
    "~/Library/Caches/com.bitwarden.desktop",
    "~/Library/Caches/com.bitwarden.desktop.ShipIt",
    "~/Library/Preferences/ByHost/com.bitwarden.desktop.ShipIt.*.plist",
    "~/Library/Preferences/com.bitwarden.desktop.plist",
    "~/Library/Preferences/com.bitwarden.desktop.helper.plist",
    "~/Library/Saved Application State/com.bitwarden.desktop.savedState",
  ]
end
