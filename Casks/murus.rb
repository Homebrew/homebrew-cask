cask "murus" do
  version "2.1.1"
  sha256 "14887520229fbfb8c493b34f7410ce4a6cdb07a5a4bc39620e781dcceecb90d2"

  url "https://github.com/TheMurusTeam/Murus/releases/download/v#{version}/murus-#{version}.zip",
      verified: "github.com/TheMurusTeam/Murus/"
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
