cask "murus" do
  version "2.0.3"
  sha256 "41fc9a86cf52a6cf8a7deb417ebc6baa2d57f72b6d2e71956f36eb18e3181402"

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
