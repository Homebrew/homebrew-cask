cask "murus" do
  version "2.0.4"
  sha256 "6765f891e8b2fc2a72003f14675884465c9956ecf4d9dd6d87ef2dcb9b34ae6b"

  # github.com/TheMurusTeam/Murus/ was verified as official when first introduced to the cask
  url "https://github.com/TheMurusTeam/Murus/releases/download/v#{version}/murus-#{version}.zip"
  appcast "https://github.com/TheMurusTeam/Murus/releases.atom"
  name "Murus Firewall"
  desc "Firewall app"
  homepage "https://www.murusfirewall.com/"

  app "Murus.app"

  uninstall launchctl: "it.murus.murusfirewallrules"

  zap trash: [
    "/Library/Application Support/Murus",
    "/etc/murus",
    "/etc/murus.sh",
    "~/Library/Caches/it.murus.Murus",
    "~/Library/Preferences/it.murus.Murus.plist",
    "/Library/Preferences/it.murus.muruslibrary.plist",
  ]
end
