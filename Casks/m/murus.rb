cask "murus" do
  version "2.5"
  sha256 "a626a58ddb9b918fefad08a482e0691bd78f1b32c3c0bafb9a3fb404b21c32d2"

  url "https://github.com/TheMurusTeam/Murus/releases/download/v#{version}/Murus.#{version}.zip",
      verified: "github.com/TheMurusTeam/Murus/"
  name "Murus Firewall"
  desc "Firewall app"
  homepage "https://www.murusfirewall.com/"

  app "Murus.app"

  uninstall launchctl: "it.murus.murusfirewallrules"

  zap trash: [
    "/etc/murus",
    "/etc/murus.sh",
    "/Library/Application Support/Murus",
    "/Library/Preferences/it.murus.muruslibrary.plist",
    "~/Library/Caches/it.murus.Murus",
    "~/Library/Preferences/it.murus.Murus.plist",
  ]
end
