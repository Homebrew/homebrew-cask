cask "murus" do
  version "2.3.4"
  sha256 "d090f4e88bb6ab1b80085ae5c4b0cc381ad63c20fbd5dc8e4277628020ecbf87"

  url "https://github.com/TheMurusTeam/Murus/releases/download/v#{version}/murus-#{version}.zip",
      verified: "github.com/TheMurusTeam/Murus/"
  name "Murus Firewall"
  desc "Firewall app"
  homepage "https://www.murusfirewall.com/"

  app "Murus.app"

  uninstall launchctl: "it.murus.murusfirewallrules"

  zap trash: [
    "/etc/murus.sh",
    "/etc/murus",
    "/Library/Application Support/Murus",
    "/Library/Preferences/it.murus.muruslibrary.plist",
    "~/Library/Caches/it.murus.Murus",
    "~/Library/Preferences/it.murus.Murus.plist",
  ]
end
