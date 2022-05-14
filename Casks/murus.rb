cask "murus" do
  version "2.3.2"
  sha256 "7a1d3ef8961ae04c1ec3d8de2245fa88a4f5fc4e35c746f6ca80cd16f6171e23"

  url "https://github.com/TheMurusTeam/Murus/releases/download/v#{version}/Murus.#{version}.zip",
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
